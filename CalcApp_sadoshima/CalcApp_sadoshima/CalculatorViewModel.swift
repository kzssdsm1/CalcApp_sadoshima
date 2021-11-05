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
    
//    private let numberFormatter: NumberFormatter = {
//        let formatter = NumberFormatter()
//
//        formatter.numberStyle = .decimal
//        formatter.generatesDecimalNumbers = true
//        formatter.usesGroupingSeparator = true
//        formatter.groupingSeparator = ","
//        formatter.groupingSize = 3
//        formatter.maximumIntegerDigits = 9
//        formatter.maximumFractionDigits = 8
//        formatter.maximumSignificantDigits = 9
//
//        return formatter
//    }()
    
    private var isInserting = false
    // 第1引数
    private var firstArgument: NSDecimalNumber?
    // 第2引数
    private var secondArgument: NSDecimalNumber?
    // 隠れ引数
    private var hiddenArgument: NSDecimalNumber?
    
    func insertNumber(_ text: String) {
        if displayingNum == "0" || isInserting {
            displayingNum = ""
            isInserting = false
        }
        
        displayingNum += text
        
        if isCalculating != .none {
            secondArgument = NSDecimalNumber(string: displayingNum)
        } else {
            firstArgument = NSDecimalNumber(string: displayingNum)
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
    
    func insertDemicalPoint() {
        if !displayingNum.contains(".") {
            displayingNum += "."
            
            if isCalculating != .none {
                secondArgument = NSDecimalNumber(string: displayingNum)
            } else {
                firstArgument = NSDecimalNumber(string: displayingNum)
            }
        }
    }
    
    // 加算
    private func addition() {
        isCalculating = .addition
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument?.adding(secondArgument)
        
        displayingNum = arrangeDispNum(firstArgument!)
        calcLog()
    }
    
    // 減算
    private func subtraction() {
        isCalculating = .subtraction
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument?.subtracting(secondArgument)
        
        displayingNum = arrangeDispNum(firstArgument!)
        calcLog()
    }
    
    // 乗算
    private func multiply() {
        isCalculating = .multiply
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument?.multiplying(by: secondArgument)
        
        displayingNum = arrangeDispNum(firstArgument!)
        calcLog()
    }
    
    // 除算
    private func divide() {
        isCalculating = .divide
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        firstArgument?.dividing(by: secondArgument)
        
        displayingNum = arrangeDispNum(firstArgument!)
        calcLog()
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
        let changeNum = Double(displayingNum)! * -1
        
        displayingNum = arrangeDispNum(changeNum)
        calcLog()
        
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
        firstArgument = nil
        secondArgument = nil
    }
    
    // 小数点以下に数値を持たない場合に整数に整える関数
    private func arrangeDispNum(_ num: NSDecimalNumber) -> String {
        if num.doubleValue.truncatingRemainder(dividingBy: 1.0) == 0 {
            let toInt = Int(truncating: num)
            return String(toInt)
        } else {
            return String(num)
        }
    }
    
    // 対数関数(Double型由来の誤差発生によりまともに機能していないのであとで書き直す)
    private func calcLog() {
        if Double(displayingNum)! > 999999999.99999 {
            let remainder = Double(displayingNum)!.truncatingRemainder(dividingBy: 10.0)
            print(remainder)
            let num = Double(displayingNum)! - remainder
            print(num)
            let log10 = log10(num)
            
            displayingNum = "\(String(remainder))e\(String(log10))"
        }
    }
    
    // Double型をNSDemicalNumber型に変換する関数
    private func doubleToDemicalNumber(_ double: Double) -> NSDecimalNumber {
        let num = double as NSNumber
        
        return NSDecimalNumber(string: num.stringValue)
    }
    
    // あとで実装する
    private func test() {
        
    }
}
