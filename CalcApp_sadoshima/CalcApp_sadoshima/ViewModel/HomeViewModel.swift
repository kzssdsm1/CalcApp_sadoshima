//
//  HomeViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import Foundation
import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var displayingNum = "0"
    @Published var isCalculating: Operator = .none
    @Published var isPressing: Operator = .none
    @Published var fontSize: CGFloat = .zero
    
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
    
    var dispSize: CGFloat = .zero
    
    private var input = ""
    
    private var isInserting = false
    // 第1引数
    private var firstArgument: Decimal?
    // 第2引数
    private var secondArgument: Decimal?
    // 隠れ引数
    private var hiddenArgument: Decimal?
    
    private var hiddenOperator: Operator = .none
    
    func insertNumber(_ text: String) {
        isPressing = .none
        
        if input == "0" || isInserting {
            input = ""
            isInserting = false
        }
        
        input += text
        displayingNum = arrangeDispNum(input.contains(".") ? String(input.prefix(10)) : String(input.prefix(9)))
        
        if text == "0" && input.suffix(2) == ".0" {
            displayingNum += ".0"
        }
        
        setFontSize()
        
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
        
        setFontSize()
    }
    
    // 加算
    private func addition() {
        if isCalculating != .addition && isCalculating != .none {
            equal()
        }
        
        isCalculating = .addition
        isPressing = isCalculating
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! += secondArgument
        
        hiddenArgument = secondArgument
        hiddenOperator = isCalculating
        
        displayingNum = convertToString(firstArgument!)
        setFontSize()
    }
    
    // 減算
    private func subtraction() {
        if isCalculating != .subtraction && isCalculating != .none {
            equal()
        }
        
        isCalculating = .subtraction
        isPressing = isCalculating
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! -= secondArgument
        
        hiddenArgument = secondArgument
        hiddenOperator = isCalculating
        
        displayingNum = convertToString(firstArgument!)
        setFontSize()
    }
    
    // 乗算
    private func multiply() {
        if isCalculating != .multiply && isCalculating != .none {
            equal()
        }
        
        isCalculating = .multiply
        isPressing = isCalculating
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! *= secondArgument
        
        hiddenArgument = secondArgument
        hiddenOperator = isCalculating
        
        displayingNum = convertToString(firstArgument!)
        setFontSize()
    }
    
    // 除算
    private func divide() {
        if isCalculating != .divide && isCalculating != .none {
            equal()
        }
        
        isCalculating = .divide
        isPressing = isCalculating
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument! /= secondArgument
        
        hiddenArgument = secondArgument
        hiddenOperator = isCalculating
        
        displayingNum = convertToString(firstArgument!)
        setFontSize()
    }
    
    // 等号
    private func equal() {
        print(isCalculating)
        if isCalculating == .addition {
            addition()
        } else if isCalculating == .subtraction {
            subtraction()
        } else if isCalculating == .multiply {
            multiply()
        } else if isCalculating == .divide {
            divide()
        } else if isCalculating == .none && hiddenArgument != nil {
            isCalculating = hiddenOperator
            secondArgument = hiddenArgument
            equal()
        }
        
        setFontSize()
        isCalculating = .none
        isPressing = isCalculating
        secondArgument = nil
    }
    
    // 割合化
    private func percent() {
        var tempNum: Decimal?
        
        if let arg = firstArgument {
            tempNum = arg
        } else {
            tempNum = secondArgument
        }
        
        if isCalculating != .none {
            firstArgument = secondArgument
        }
        secondArgument = Decimal(string: "0.01")!
        
        multiply()
        isCalculating = .none
        isPressing = .none
        secondArgument = firstArgument
        hiddenArgument = firstArgument
        firstArgument = tempNum!
        
        secondArgument = nil
    }
    
    // 符号反転
    private func changeSign() {
        var changeNum = convertToDecimal(input)
        
        changeNum *= -1
        
        input = convertToString(changeNum)
        displayingNum = input
        setFontSize()
        
        if isCalculating != .none {
            secondArgument = changeNum
        } else {
            firstArgument = changeNum
        }
    }
    
    private func setFontSize() {
        if displayingNum.count > 5 {
            fontSize = dispSize * 0.2 - CGFloat((displayingNum.count - 5)) * (dispSize * 0.012)
        } else {
            fontSize = dispSize * 0.2
        }
    }
    
    // 情報のクリア
    private func clearText() {
        displayingNum = "0"
        isCalculating = .none
        hiddenOperator = .none
        input = ""
        firstArgument = nil
        secondArgument = nil
        hiddenArgument = nil
        isPressing = .none
        setFontSize()
    }
    
    private func convertToString(_ num: Decimal) -> String {
        if num > 999999999.999997 {
            return calcExp(num)
        } else {
            return arrangeDispNum("\(num)")
        }
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
    
    private func arrangeDispNum(_ strValue: String) -> String {
        let num = convertToDecimal(strValue)
        
        guard let formatter = numberFormatter.string(from: num as NSNumber) else {
            print("Failed to arrange: \(strValue) and \(num)")
            return "0"
        }
        
        return formatter
    }
    
    private func calcExp(_ num: Decimal) -> String {
        let behavior1 = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.down,
            scale: 0,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        
        var deci = num
        
        var isMinus = false
        
        if deci < 0 {
            isMinus = true
            deci *= Decimal(string: "-1")!
        }
        
        let e = Decimal(string: "10")!
        let log = deci.log(base: e)
        let rounded = NSDecimalNumber(decimal: log).rounding(accordingToBehavior: behavior1)
        let powed = pow(10, Int(truncating: rounded))
        let divided = deci / powed
        
        let behavior2 = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.plain,
            scale: 5,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        
        let rounded2 = NSDecimalNumber(decimal: divided).rounding(accordingToBehavior: behavior2)
        
        var result: String {
            if isMinus {
                return "-\(rounded2)e\(rounded)"
            } else {
                return "\(rounded2)e\(rounded)"
            }
        }
        
        return result
    }
    
    func convertUnit(_ num: Decimal) {
        
    }
}