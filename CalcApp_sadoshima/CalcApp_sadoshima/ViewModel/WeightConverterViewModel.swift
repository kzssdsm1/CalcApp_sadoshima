//
//  WeightConverterViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/07.
//

import Foundation

// 重さの変換機能
final class WeightConverterViewModel: ObservableObject {
    // メートル法
    // ミリグラム→グラム
    func milligramToGram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.001")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // ミリグラム→キログラム
    func milligramToKilogram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.000001")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // ミリグラム→トン
    func milligramToTon(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.000000001")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→ミリグラム
    func gramToMiligram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "1000")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→キログラム
    func gramToKilogram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.001")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→トン
    func gramToTon(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.000001")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→グレーン
    func gramToGrain(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "15.4324")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→ドラム
    func gramToDram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.564383")
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
    
    // グラム→オンス
    func gramToOunce(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.035274")
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
    
    // グラム→ポンド
    func gramToPound(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.00220462")
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
    
    // グラム→ストーン
    func gramToStone(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.000157473")
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
    
    // グラム→分
    func gramToFun(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "2.66667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→匁
    func gramToMonme(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.266667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→百目
    func gramToHyakume(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.00266667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // グラム→斤
    func gramToKin(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.00166667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→グラム
    func kilogramToGram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "1000")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→トン
    func kilogramToTon(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.001")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→グレーン
    func kilogramToGrain(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "15432.4")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→ドラム
    func kilogramToDram(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "564.383")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→オンス
    func kilogramToOunce(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "35.274")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→ポンド
    func kilogramToPound(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "2.20462")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→ストーン
    func kilogramToStone(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.157473")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→分
    func kilogramToFun(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "2666.67")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→匁
    func kilogramToMonme(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "266.667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→百目
    func kilogramToHyakume(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "2.66667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→斤
    func kilogramToKin(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "1.66667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
    
    // キログラム→貫
    func kilogramToKan(_ num: NSDecimalNumber) -> NSDecimalNumber {
        let multiplier = NSDecimalNumber(string: "0.266667")
        let multiplied = num.multiplying(by: multiplier)
        
        return multiplied
    }
}
