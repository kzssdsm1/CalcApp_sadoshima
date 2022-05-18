//
//  NumberDisplayViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/15.
//

import Foundation
import Combine
import UIKit

final class NumberDisplayViewModel: ObservableObject {
    @Published var displayingNumber = "0"  {
        didSet {
            NumberObserver.shared.arrangedNumberSubject.send(displayingNumber)
        }
    }
    @Published var previousNumber = ""
    
    private var cancellables: [AnyCancellable] = []
    
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
    
    init() {
        bind()
    }
    
    private func bind() {
        let displayingNumberSubscriber = NumberObserver.shared.displayingNumberSubject
            .sink { [weak self] value in
                guard let self = self else { return }
                self.displayingNumber = self.arrangeDisplayNumber(value)
            }
        
        let previousNumberSubscriber = NumberObserver.shared.previousNumberSubject
            .sink { [weak self] value in
                guard let self = self else { return }
                self.previousNumber = value
                print("prev is \(self.previousNumber)")
            }
        
        cancellables += [
            displayingNumberSubscriber,
            previousNumberSubscriber
        ]
    }
    
    private func arrangeDisplayNumber(_ displayNumber: String) -> String {
        NumberObserver.shared.canShowDetailNumber.send(false)
        
        let num = (displayNumber as NSString).doubleValue
        
        if num > 999999999.999997 || num < 0.000000001 && num != 0.0 {
            return calcExp(convertToDecimal(displayNumber))
        } else if displayNumber == "NaN" {
            return "Error"
        } else {
            return roundNumber("\(displayNumber)")
        }
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
    
    private func roundNumber(_ strValue: String) -> String {
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
        
        var rounded = NSDecimalNumber(decimal: log).rounding(accordingToBehavior: behavior1)
        
        var isRoundedMinus = false
        
        if rounded.intValue < 0 {
            isRoundedMinus = true
            var tempNum = Decimal(string: rounded.stringValue)!
            tempNum *= Decimal(string: "-1")!
            rounded = NSDecimalNumber(string: "\(tempNum)")
        }
        
        let powed = pow(10, Int(truncating: rounded))
        
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
        
        if rounded.stringValue.contains("NaN") || rounded2.stringValue.contains("NaN") {
            result = "Error"
        }
        
        if result != "Error" {
            NumberObserver.shared.canShowDetailNumber.send(true)
        }
        
        return result
    }
}
