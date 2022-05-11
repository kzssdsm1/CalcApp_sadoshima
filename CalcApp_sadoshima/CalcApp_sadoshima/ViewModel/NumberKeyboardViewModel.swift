//
//  NumberKeyboardViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/27.
//

import Foundation
import Combine

final class NumberKeyboardViewModel: ObservableObject {
    @Published var canShowDetailNumber = false
    // 進行中の演算
    @Published var operationsInProgress: Operator = .none
    
    // 前回行った演算
    var previousOperation: Operator = .none
    // 第一引数
    var firstArgument: Decimal? {
        didSet {
            guard firstArgument != oldValue else { return }
            
            NumberObserver.shared.firstArgumentSubject.send(firstArgument)
        }
    }
    
    // 入力された数値を保持しておく変数
    private var input = ""
    // 第二引数
    private var secondArgument: Decimal? {
        didSet {
            guard secondArgument != oldValue else { return }
            
            NumberObserver.shared.firstArgumentSubject.send(secondArgument)
        }
    }
    // 前回使用した第二引数
    private var previousArgument: Decimal?
    private var cancellables: [AnyCancellable] = []
    
    init() {
        bind()
    }
    
    private func bind() {
        let firstArgumentSubscriber = NumberObserver.shared.firstArgumentSubject
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.firstArgument = value
            }
        
        let secondArgumentSubscriber = NumberObserver.shared.secondArgumentSubject
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.secondArgument = value
            }
        
        let showDetailNumberAuthoritySubscriber = NumberObserver.shared.canShowDetailNumber
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.canShowDetailNumber = value
            }
        
        cancellables += [
            firstArgumentSubscriber,
            secondArgumentSubscriber,
            showDetailNumberAuthoritySubscriber
        ]
    }
    
    // 加算
    private func addition() {
        input = ""
        operationsInProgress = .addition
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! += secondArgument
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 減算
    private func subtraction() {
        input = ""
        operationsInProgress = .subtraction
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! -= secondArgument
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 乗算
    private func multiply() {
        input = ""
        operationsInProgress = .multiply
        
        guard let secondArgument = secondArgument else { return }
        
        let multiplaied = firstArgument!.mul(secondArgument)
        
        firstArgument = multiplaied
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 除算
    private func divide() {
        input = ""
        operationsInProgress = .multiply
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! /= secondArgument
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 符号反転
    private func changeSign() {
        guard !input.isEmpty else { return }
        
        let number = convertToDecimal(input)
        
        input = "\(number)"
        
        NumberObserver.shared.displayingNumberSubject.send(input)
        
        if operationsInProgress != .none {
            secondArgument = number
        } else {
            firstArgument = number
        }
    }
    
    // 等号
    private func equal() {
        if operationsInProgress == .addition {
            addition()
        } else if operationsInProgress == .subtraction {
            subtraction()
        } else if operationsInProgress == .multiply {
            multiply()
        } else if operationsInProgress == .divide {
            divide()
        } else if operationsInProgress == .none && previousOperation != .none {
            guard let num = previousArgument else { return }
            
            operationsInProgress = previousOperation
            secondArgument = num
            
            equal()
        }
        
        operationsInProgress = .none
        secondArgument = nil
    }
    
    // 情報のクリア
    private func clearText() {
        NumberObserver.shared.displayingNumberSubject.send("0")
        input = ""
        operationsInProgress = .none
        previousOperation = .none
        firstArgument = nil
        secondArgument = nil
        previousArgument = nil
    }
    
    // String型からDecimal型へ変換する関数
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
    
    // 数値の入力を行うメソッド
    func insertNumber(_ insertNumber: String) {
        guard !input.contains(".") && input.count >= 9,
              input.contains(".") && input.count >= 10 else { return }
        
        input += insertNumber
        
        NumberObserver.shared.displayingNumberSubject.send(input)
        
        if operationsInProgress != .none {
            secondArgument = convertToDecimal(input)
        } else {
            firstArgument = convertToDecimal(input)
        }
    }
    
    // 小数点を挿入するメソッド
    func insertDecimalPoint() {
        guard !input.contains(".") || input.count < 9 else { return }
        
        if input.isEmpty {
            input = "0."
            NumberObserver.shared.displayingNumberSubject.send(input)
        } else {
            input += "."
            NumberObserver.shared.displayingNumberSubject.send(input)
        }
    }
}
