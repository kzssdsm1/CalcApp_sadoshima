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
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .decimal
        formatter.generatesDecimalNumbers = true
        formatter.usesGroupingSeparator = true
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        formatter.maximumIntegerDigits = 9
        formatter.maximumFractionDigits = 8
        formatter.maximumSignificantDigits = 9
        
        return formatter
    }()
    
    private var input = ""
    
    private var isInserting = false
    // 第1引数
    private var firstArgument: Decimal?
    // 第2引数
    private var secondArgument: Decimal?
    // 隠れ引数
    private var hiddenArgument: Decimal?
    
    func insertNumber(_ text: String) {
        if input == "0" || isInserting {
            input = ""
            isInserting = false
        }
        
        input += text
        displayingNum = arrangeDispNum(input)
        
        if text == "0" && input.suffix(2) == ".0" {
            displayingNum += ".0"
        }
        
        if isCalculating != .none {
            secondArgument = convertToDecimal(input)
        } else {
            firstArgument = convertToDecimal(input)
        }
    }
    
    func setOperator(_ paramOperator: Operator) {
        switch paramOperator {
        case .plusMinus:
            changeSign()
        case .allClear:
            clearText()
        case .percent:
            percent()
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
    
    func insertDecimalPoint() {
        guard !input.contains(".") else { return }
        
        if input.isEmpty {
            input = "0."
            displayingNum = input
        } else {
            input += "."
            displayingNum = input
        }
    }
    
    // 加算
    private func addition() {
        isCalculating = .addition
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! += secondArgument
        
        displayingNum = convertToString(firstArgument!)
    }
    
    // 減算
    private func subtraction() {
        isCalculating = .subtraction
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! -= secondArgument
        
        displayingNum = convertToString(firstArgument!)
    }
    
    // 乗算
    private func multiply() {
        isCalculating = .multiply
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! *= secondArgument
        
        print()
        
        displayingNum = convertToString(firstArgument!)
    }
    
    // 除算
    private func divide() {
        isCalculating = .divide
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! /= secondArgument
        
        displayingNum = convertToString(firstArgument!)
    }
    
    // 等号
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
    
    // 割合化
    private func percent() {
        secondArgument = 100
        
        divide()
        
        secondArgument = nil
    }
    
    // 符号反転
    private func changeSign() {
        var changeNum = convertToDecimal(input)
        
        changeNum *= -1
        
        input = convertToString(changeNum)
        displayingNum = input
        
        if isCalculating != .none {
            secondArgument = changeNum
        } else {
            firstArgument = changeNum
        }
    }
    
    // 情報のクリア
    private func clearText() {
        displayingNum = "0"
        isCalculating = .none
        input = ""
        firstArgument = nil
        secondArgument = nil
    }
    
    private func convertToString(_ num: Decimal) -> String {
        if num > 999999999 {
            return calcLog(num)
        } else {
            return arrangeDispNum("\(num)")
        }
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
    
    // 対数関数(Double型由来の誤差発生によりまともに機能していないのであとで書き直す)
    private func calcLog(_ num: Decimal) -> String {
        let diviser = Decimal(string: "10")!
        let divided = num / diviser
        let multiplied = divided * diviser
        let log = log10(Double(truncating: multiplied as NSNumber))
        
        return "1e\(String(log))"
    }
    
    private func arrangeDispNum(_ strValue: String) -> String {
        let num = convertToDecimal(strValue)
        
        guard let formatter = numberFormatter.string(from: num as NSNumber) else {
            print("Failed to arrange: \(strValue) and \(num)")
            return "0"
        }
        
        return formatter
    }
}
