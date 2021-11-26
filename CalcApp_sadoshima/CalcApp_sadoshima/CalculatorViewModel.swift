//
//  CalculatorViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/10/22.
//

import Foundation
import SwiftUI

final class CalculatorViewModel: ObservableObject {
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
        secondArgument = Decimal(string: "100")!
        
        divide()
        
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
        setFontSize()
    }
    
    private func convertToString(_ num: Decimal) -> String {
        return arrangeDispNum("\(num)")
        //        if num > 999999999.999997 {
        //            return test(num)
        //        } else {
        //            return arrangeDispNum("\(num)")
        //        }
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
    
//    // 対数関数(Double型由来の誤差発生によりまともに機能していないのであとで書き直す)
//    private func calcLog(_ num: Decimal) -> String {
//        let diviser = Decimal(string: "10")!
//        let divided = num / diviser
//        let multiplied = divided * diviser
//        print(divided)
//        print(multiplied)
//        let log = log10(Double(truncating: multiplied as NSNumber))
//
//        return "1e\(String(log))"
//    }
//
//    // 試作
//    private func test(_ decimalVaule: Decimal) -> String {
//        let num = NSDecimalNumber(decimal: decimalVaule)
//
//        if decimalVaule < 0 {
//            num.multiplying(by: -1)
//        }
//
//        // 切り捨て
//        let behaviors1: NSDecimalNumberHandler = NSDecimalNumberHandler(
//            roundingMode: NSDecimalNumber.RoundingMode.down,
//            scale: 0,
//            raiseOnExactness: false,
//            raiseOnOverflow: false,
//            raiseOnUnderflow: false,
//            raiseOnDivideByZero: false
//        )
//        let diviser = NSDecimalNumber(string: "10")
//        let divided = num.dividing(by: diviser)
//        let rounded1 = divided.rounding(accordingToBehavior: behaviors1)
//        print(rounded1)
//        let multiplied = diviser.multiplying(by: rounded1)
//        print(multiplied)
//        let divided2 = num.dividing(by: multiplied)
//        print("dividing: \(divided2)")
//
//        let behaviors2: NSDecimalNumberHandler = NSDecimalNumberHandler(
//            roundingMode: NSDecimalNumber.RoundingMode.plain,
//            scale: 0,
//            raiseOnExactness: false,
//            raiseOnOverflow: false,
//            raiseOnUnderflow: false,
//            raiseOnDivideByZero: false
//        )
//
//        let log10 = log10(multiplied.doubleValue)
//        let logString = String(log10)
//        let rounded2 = NSDecimalNumber(string: logString).rounding(accordingToBehavior: behaviors2)
//
//        var scale: Int16 {
//            if log10 >= 10 {
//                return 4
//            } else if log10 >= 100 {
//                return 3
//            } else {
//                return 5
//            }
//        }
//
//        let behaviors3: NSDecimalNumberHandler = NSDecimalNumberHandler(
//            roundingMode: NSDecimalNumber.RoundingMode.plain,
//            scale: scale,
//            raiseOnExactness: false,
//            raiseOnOverflow: false,
//            raiseOnUnderflow: false,
//            raiseOnDivideByZero: false
//        )
//        let rounded3 = divided2.rounding(accordingToBehavior: behaviors3)
//
//        if decimalVaule < 0 {
//            rounded3.multiplying(by: -1)
//        }
//
//        return "\(rounded3)e\(rounded2)"
//    }
    
    private func arrangeDispNum(_ strValue: String) -> String {
        let num = convertToDecimal(strValue)
        
        guard let formatter = numberFormatter.string(from: num as NSNumber) else {
            print("Failed to arrange: \(strValue) and \(num)")
            return "0"
        }
        
        return formatter
    }
}
