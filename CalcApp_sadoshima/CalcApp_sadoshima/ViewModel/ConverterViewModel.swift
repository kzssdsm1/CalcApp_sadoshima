//
//  ConverterViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/12/17.
//

import Foundation

final class ConverterViewModel: ObservableObject {
    @Published var displayingText = ""
    
    private let behavior = NSDecimalNumberHandler(
        roundingMode: NSDecimalNumber.RoundingMode.down,
        scale: 0,
        raiseOnExactness: false,
        raiseOnOverflow: false,
        raiseOnUnderflow: false,
        raiseOnDivideByZero: false
    )
    
    // 税抜き→税込み
    func calcTaxedPrice(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "1.1")
        let multiplied = num.multiplying(by: multiplier)
        let rounded = multiplied.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 税込み→税抜き
    func calcNonTaxedPrice(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let divider = NSDecimalNumber(string: "1.1")
        let divided = num.dividing(by: divider)
        let rounded = divided.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 税込み→消費税
    func calcTax(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.1")
        let divider = NSDecimalNumber(string: "1.1")
        let multiplied = num.multiplying(by: multiplier)
        let divided = multiplied.dividing(by: divider)
        let rounded = divided.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 華氏→摂氏
    func toCelsius(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let subtructer = NSDecimalNumber(string: "32")
        let divider = NSDecimalNumber(string: "2")
        let subtructed = num.subtracting(subtructer)
        let divided = subtructed.dividing(by: divider)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.plain,
            scale: 1,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = divided.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 摂氏→華氏
    func toFahrenheit(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "1.8")
        let adder = NSDecimalNumber(string: "30")
        let multiplied = num.multiplying(by: multiplier)
        let added = multiplied.adding(adder)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.plain,
            scale: 1,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = added.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 身長(cm)→適正体重
    func toAverageWeight(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let divider = NSDecimalNumber(string: "10")
        let divided = num.dividing(by: divider)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.plain,
            scale: 2,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = divided.rounding(accordingToBehavior: behavior)
        let multiplied = rounded.multiplying(by: rounded)
        let multiplier = NSDecimalNumber(string: "22")
        let averageWeight = multiplied.multiplying(by: multiplier)
        
        return averageWeight
    }
    
    // cm→inch
    func cmToInch(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.39370079")
        let multiplied = num.multiplying(by: multiplier)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.down,
            scale: 2,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = multiplied.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // inch→cm
    func inchToCm(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "2.54")
        let multiplied = num.multiplying(by: multiplier)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.down,
            scale: 2,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = multiplied.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // cm→寸
    func cmToSun(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.33")
        let multiplied = num.multiplying(by: multiplier)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.down,
            scale: 2,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = multiplied.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 寸→cm
    func sunToCm(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "3.0303")
        let multiplied = num.multiplying(by: multiplier)
        let behavior = NSDecimalNumberHandler(
            roundingMode: NSDecimalNumber.RoundingMode.down,
            scale: 2,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        let rounded = multiplied.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
}
