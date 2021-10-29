//
//  CalculatorViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/10/22.
//

import Foundation

final class CalculatorViewModel: ObservableObject {
    @Published var displayingNum = "0"
    @Published var isCalculating: Operator = .none
    
    private var isInserting = false
    // 第1引数
    private var firstArgument: Double?
    // 第2引数
    private var secondArgument: Double?
    // 隠れ引数
    private var hiddenArgument: Double?
    
    func insertNumber(_ text: String) {
        if displayingNum == "0" || isInserting {
            displayingNum = ""
            isInserting = false
        }
        
        displayingNum += text
        
        if isCalculating != .none {
            secondArgument = Double(displayingNum)!
        } else {
            firstArgument = Double(displayingNum)!
        }
    }
    
    func setOperator(_ paramOperator: Operator) {
        switch paramOperator {
        case .plusMinus:
            return
        case .allClear:
            clearText()
        case .percent:
            return
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
    
    // 加算
    private func addition() {
        isCalculating = .addition
        isInserting = true
       
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! += secondArgument
        
        displayingNum = arrangeDispNum(firstArgument!)
    }
    
    // 減算
    private func subtraction() {
        isCalculating = .subtraction
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! -= secondArgument
        
        displayingNum = arrangeDispNum(firstArgument!)
    }
    
    // 乗算
    private func multiply() {
        isCalculating = .multiply
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! *= secondArgument
        
        displayingNum = arrangeDispNum(firstArgument!)
    }
    
    // 除算
    private func divide() {
        isCalculating = .divide
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! /= secondArgument
        
        displayingNum = arrangeDispNum(firstArgument!)
    }
    
    private func equal() {
        if isCalculating == .addition {
            addition()
        } else if isCalculating == .subtraction {
            subtraction()
        } else if isCalculating == .multiply {
            multiply()
        } else {
            divide()
        }
        
        secondArgument = nil
    }
    
    private func changeSign() {

    }
    
    private func clearText() {
        displayingNum = "0"
        isCalculating = .none
        firstArgument = nil
        secondArgument = nil
    }
    
    // 小数点以下に数値を持たない場合に整数に整える関数
    private func arrangeDispNum(_ num: Double) -> String {
        if num.truncatingRemainder(dividingBy: 1.0) == 0 {
            let toInt = Int(num)
            return String(toInt)
        } else {
            return String(num)
        }
    }
}
