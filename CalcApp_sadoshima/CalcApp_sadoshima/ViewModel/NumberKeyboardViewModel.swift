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
    
    // 入力された数値を保持しておく変数
    private var input = ""
    // 第一引数
    private var firstArgument: Decimal? {
        didSet {
            NumberObserver.shared.convertArgumentSubject.send(firstArgument)
            
            // 前回と数値が同じでなければストリームに値を流す
            guard firstArgument != oldValue else { return }
            
            NumberObserver.shared.firstArgumentSubject.send(firstArgument)
        }
    }
    // 第二引数
    private var secondArgument: Decimal?
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
        
        let previousArgumentSubscriber = NumberObserver.shared.previousArgumentSubject
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.previousArgument = value
                self.previousOperation = .multiply
            }
        
        let showDetailNumberAuthoritySubscriber = NumberObserver.shared.canShowDetailNumber
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.canShowDetailNumber = value
            }
        
        cancellables += [
            firstArgumentSubscriber,
            previousArgumentSubscriber,
            showDetailNumberAuthoritySubscriber
        ]
    }
    
    // 加算
    private func addition() {
        if operationsInProgress != .addition && operationsInProgress != .none {
            equal()
        }
        
        input = ""
        operationsInProgress = .addition
        
        // アプリ落ち防止
        guard let secondArgument = secondArgument else { return }
        
        if firstArgument == nil {
            firstArgument = 0
        }
        
        firstArgument! += secondArgument
        
        NumberObserver.shared.displayingNumberSubject.send("\(firstArgument!)")
        
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 減算
    private func subtraction() {
        if operationsInProgress != .subtraction && operationsInProgress != .none {
            equal()
        }
        
        input = ""
        operationsInProgress = .subtraction
        
        guard let secondArgument = secondArgument else { return }
        
        if firstArgument == nil {
            firstArgument = 0
        }
        
        firstArgument! -= secondArgument
        
        NumberObserver.shared.displayingNumberSubject.send("\(firstArgument!)")
        
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 乗算
    private func multiply() {
        if operationsInProgress != .multiply && operationsInProgress != .none {
            equal()
        }
        
        input = ""
        operationsInProgress = .multiply
        
        guard let secondArgument = secondArgument else { return }
        
        if firstArgument == nil {
            firstArgument = 0
        }
        
        let multiplaied = firstArgument!.mul(secondArgument)
        
        firstArgument = multiplaied
        
        NumberObserver.shared.displayingNumberSubject.send("\(firstArgument!)")
        
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 除算
    private func divide() {
        if operationsInProgress != .divide && operationsInProgress != .none {
            equal()
        }
        
        input = ""
        operationsInProgress = .divide
        
        guard let secondArgument = secondArgument else { return }
        
        if firstArgument == nil {
            firstArgument = 0
        }
        
        firstArgument! /= secondArgument
        
        NumberObserver.shared.displayingNumberSubject.send("\(firstArgument!)")
        
        previousArgument = secondArgument
        previousOperation = operationsInProgress
    }
    
    // 符号反転
    private func changeSign() {
        guard !input.isEmpty else { return }
        
        let number = convertToDecimal(input)
        let multiplied = number.mul(-1)
        
        input = "\(multiplied)"
        
        NumberObserver.shared.displayingNumberSubject.send(input)
        
        if operationsInProgress != .none {
            secondArgument = multiplied
        } else {
            firstArgument = multiplied
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
        canShowDetailNumber = false
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
    
    func setOperator(_ paramOperator: Operator) {
        switch paramOperator {
        case .detail:
            // 何もしない
            return
        case .plusMinus:
            changeSign()
        case .allClear:
            clearText()
        case .percent:
            return
            //convertUnit("0.01")
        case .divide:
            divide()
        case .multiply:
            multiply()
        case .subtraction:
            subtraction()
        case .addition:
            addition()
        case .equal:
            equal()
        case .none:
            // 何もしない
            return
        }
    }
    
    // 数値の入力を行うメソッド
    func insertNumber(_ insertNumber: String) {
        
        input += insertNumber
        
        NumberObserver.shared.displayingNumberSubject.send(input.contains(".") ? String(input.prefix(10)) : String(input.prefix(9)))
        
        if operationsInProgress != .none {
            secondArgument = convertToDecimal(input)
            NumberObserver.shared.convertArgumentSubject.send(secondArgument)
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
