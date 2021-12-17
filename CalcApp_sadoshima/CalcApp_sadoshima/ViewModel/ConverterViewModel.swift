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
        let diviser = NSDecimalNumber(string: "1.1")
        let divided = num.dividing(by: diviser)
        let rounded = divided.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 税込み→消費税
    func calcTax(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.1")
        let diviser = NSDecimalNumber(string: "1.1")
        let multiplied = num.multiplying(by: multiplier)
        let divided = multiplied.dividing(by: diviser)
        let rounded = divided.rounding(accordingToBehavior: behavior)
        
        return rounded
    }
    
    // 華氏→摂氏
    func toCelsius(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let subtructer = NSDecimalNumber(string: "32")
        let diviser = NSDecimalNumber(string: "2")
        let subtructed = num.subtracting(subtructer)
        let divided = subtructed.dividing(by: diviser)
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
}
