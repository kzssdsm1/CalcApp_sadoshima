//
//  HomeViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import Foundation
import SwiftUI
import Combine

final class HomeViewModel: ObservableObject {
    @Published var displayingNumber = "0"
    @Published var previousNumber = ""
    @Published var displayUnit = ""
    @Published var isCalculating: Operator = .none
    @Published var isPressing: Operator = .none
    @Published var selection: Selection = .Calculator
    @Published var fontSize: CGFloat = .zero
    @Published var prevNumFontSize: CGFloat = .zero
    @Published var isShowingPrevNum = false
    
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
    
    private var isConverting = false
    
    private var isInserting = false
    // 第1引数
    var firstArgument: Decimal?
    // 第2引数
    private var secondArgument: Decimal?
    // 隠れ引数
    private var hiddenArgument: Decimal?
    
    private var hiddenOperator: Operator = .none
    private var cancellables: [AnyCancellable] = []
    
    enum Selection {
        case Calculator
        case UnitConverter
    }
    
    init() {
        bind()
    }
    
    func insertNumber(_ insertText: String) {
        isPressing = .none
        
        if input == "0" || isInserting {
            input = ""
            isInserting = false
        }
        
        input += insertText
        NumberObserver.shared.displayingNumberSubject.send(arrangeDispNum(input.contains(".") ? String(input.prefix(10)) : String(input.prefix(9))))
        
        if insertText == "0" && input.suffix(2) == ".0" {
            displayingNumber += ".0"
        }
        
        setFontSize()
        
        if isCalculating != .none {
            NumberObserver.shared.secondArgumentSubject.send(convertToDecimal(input))
        } else {
            print("input is \(input)")
            NumberObserver.shared.firstArgumentSubject.send(convertToDecimal(input))
            print(firstArgument ?? "No fir")
        }
    }
    
    func setOperator(_ paramOperator: Operator) {
        switch paramOperator {
        case .plusMinus:
            changeSign()
        case .allClear:
            clearText()
        case .percent:
            convertUnit("0.01")
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
            displayingNumber = input
        } else {
            input += "."
            displayingNumber = input
        }
        
        setFontSize()
    }
    
    func convertUnit(_ displayNumber: String) {
        guard firstArgument != nil else { return }
        
        let previousOperator = isCalculating
        let prevSecArgument: Decimal? = secondArgument
        
        isConverting = true
        
        if secondArgument != nil {
            let prevFirArgument = firstArgument
            firstArgument = secondArgument
            secondArgument = Decimal(string: displayNumber)!
            multiply()
            secondArgument = firstArgument
            firstArgument = prevFirArgument
        } else {
            secondArgument = Decimal(string: displayNumber)!
            multiply()
            secondArgument = prevSecArgument
        }
        
        isCalculating = previousOperator
        isPressing = .none
        isConverting = false
    }
    
    func setPrevNum(_ unit: String) {
        previousNumber = "\(displayingNumber) \(unit) ="
        setPrevNumFontSize()
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
        
        displayingNumber = convertToString(firstArgument!)
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
        
        displayingNumber = convertToString(firstArgument!)
        setFontSize()
    }
    
    // 乗算
    private func multiply() {
        if isCalculating != .multiply && isCalculating != .none && !isConverting {
            equal()
        }
        
        isCalculating = .multiply
        isPressing = isCalculating
        isInserting = true
        
        guard let secondArgument = secondArgument else { return }
        
        let multiplaied = firstArgument!.mul(secondArgument)
        firstArgument = multiplaied
        
        hiddenArgument = secondArgument
        hiddenOperator = isCalculating
        
        displayingNumber = convertToString(firstArgument!)
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
        
        displayingNumber = convertToString(firstArgument!)
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
    
    // 符号反転
    private func changeSign() {
        var changeNum = convertToDecimal(input)
        
        changeNum *= -1
        
        input = convertToString(changeNum)
        displayingNumber = input
        setFontSize()
        
        if isCalculating != .none {
            secondArgument = changeNum
        } else {
            firstArgument = changeNum
        }
    }
    
    private func setPrevNumFontSize() {
        if previousNumber.count > 5 {
            prevNumFontSize = dispSize * 0.2 - CGFloat((previousNumber.count - 5)) * (dispSize * 0.012)
        } else {
            prevNumFontSize = dispSize * 0.2
        }
    }
    
    func setFontSize() {
        if displayingNumber.count > 5 {
            fontSize = dispSize * 0.2 - CGFloat((displayingNumber.count - 5)) * (dispSize * 0.012)
        } else {
            fontSize = dispSize * 0.2
        }
    }
    
    // 情報のクリア
    private func clearText() {
        displayingNumber = "0"
        isCalculating = .none
        hiddenOperator = .none
        input = ""
        previousNumber = ""
        firstArgument = nil
        secondArgument = nil
        hiddenArgument = nil
        isPressing = .none
        setFontSize()
    }
    
    private func convertToString(_ displayNumber: Decimal) -> String {
        print("num is \(displayNumber)")
        if displayNumber > 999999999.999997 || displayNumber < 0.000000001 {
            return calcExp(displayNumber)
        } else if displayNumber.isNaN {
            return "Error"
        } else {
            return arrangeDispNum("\(displayNumber)")
        }
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
    
    private func arrangeDispNum(_ strValue: String) -> String {
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.plain,
            scale: 9,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        
        let rounded = NSDecimalNumber(string: strValue).rounding(accordingToBehavior: behavior)
        let num = convertToDecimal(rounded.stringValue)
        
        guard let formatter = numberFormatter.string(from: num as NSNumber) else {
            print("Failed to arrange: \(strValue) and \(num)")
            return "0"
        }
        
        return formatter
    }
    
    private func calcExp(_ number: Decimal) -> String {
        let behavior1 = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.down,
            scale: 0,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        
        var deci = number
        
        var isMinus = false
        
        if deci < 0 {
            isMinus = true
            deci *= Decimal(string: "-1")!
        }
        
        let e = Decimal(string: "10")!
        let log = deci.log(base: e)
        
        print("log is: \(log)")
        var rounded = NSDecimalNumber(decimal: log).rounding(accordingToBehavior: behavior1)
        print(rounded)
        
        var isRoundedMinus = false
        
        if rounded.intValue < 0 {
            isRoundedMinus = true
            var test = Decimal(string: rounded.stringValue)!
            test *= Decimal(string: "-1")!
            rounded = NSDecimalNumber(string: "\(test)")
            print(rounded)
        }
        
        let powed = pow(10, Int(truncating: rounded))
        print(powed)
        
        var divided: Decimal?
        
        if !isRoundedMinus {
            divided = deci / powed
        } else {
            divided = deci.mul(powed)
        }
        
        let behavior2 = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.plain,
            scale: 5,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        
        let rounded2 = NSDecimalNumber(decimal: divided!).rounding(accordingToBehavior: behavior2)
        
        var result = ""
        
        if isMinus {
            result = "-\(rounded2)e\(rounded)"
        } else {
            if isRoundedMinus {
                result = "\(rounded2)e-\(rounded)"
            } else {
                result = "\(rounded2)e\(rounded)"
            }
        }
        
        //        var result: String {
        //            if isMinus {
        //                return "-\(rounded2)e\(rounded)"
        //            } else {
        //                if isRoundedMinus {
        //                    return "\(rounded2)e-\(rounded)"
        //                } else {
        //                    return "\(rounded2)e\(rounded)"
        //                }
        //            }
        //        }
        
        if rounded.stringValue.contains("NaN") || rounded2.stringValue.contains("NaN") {
            result = "Underflow"
        }
        
        print(result)
        
        return result
    }
    
    private func bind() {
        let firstArgumentSubscriber = NumberObserver.shared.firstArgumentSubject
            //.receive(on: DispatchQueue.main)
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
        
        let displayingNumberSubscriber = NumberObserver.shared.displayingNumberSubject
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.displayingNumber = value
            }
        
        cancellables += [
            firstArgumentSubscriber,
            secondArgumentSubscriber,
            displayingNumberSubscriber
        ]
    }
}
