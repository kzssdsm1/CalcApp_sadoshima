//
//  Decimal+Extension.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/18.
//

import Foundation

extension Decimal {
    var floor: Decimal {
        let behavior = NSDecimalNumberHandler(
            roundingMode: .down,
            scale: 0,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: false
        )
        return (self as NSDecimalNumber).rounding(accordingToBehavior: behavior) as Decimal
    }
    
    var abs: Decimal {
        return self < 0 ? -self : self
    }
    
    static let e = Decimal(string: "2.71828182845904523536028747135266249776")!
    
    func mul(_ y: Decimal) -> Decimal {
        let r = self * y
        if self.abs < 1 && y.abs < 1 && r.abs >= 1 {
            return .nan
        }
        return r
    }
    
    func newton(f_df: (Decimal) -> Decimal, estimate: Decimal) -> Decimal {
        var result = estimate, minDiff = Decimal.greatestFiniteMagnitude
        var next = estimate - f_df(result)
        if next.isNaN { return .nan }
        result = next
        var lambda: Decimal = 1
        while true {
            let step = f_df(result)
            let diff = step.abs
            while diff * lambda >= minDiff {
                lambda /= 2
            }
            minDiff = diff * lambda
            next -= step * lambda
            if next.isNaN || next == result {
                return result
            } else if diff * lambda <= Decimal.leastNonzeroMagnitude {
                return next
            }
            result = next
        }
    }
    
    func exp() -> Decimal {
        if isNaN { return .nan }
        else if self == 0 { return 1 }
        else if self < 0 { return 1 / (-self).exp() }
        
        let integer = self.floor
        let decimal = self - integer
        
        let intX = (integer as NSNumber).intValue
        if !integer.isZero && intX == 0 { return .nan }
        let intRes = Foundation.pow(Decimal.e, intX)
        
        var coef = decimal
        var coefs = [Decimal]()
        for i in 2...34 {
            coef = coef.mul(decimal / Decimal(i))
            if coef.isNaN { break }
            coefs.append(coef)
        }
        let decRes = coefs.reversed().reduce(0, { $0 + $1 }) + decimal + 1
        
        return intRes * decRes
    }
    
    func ln() -> Decimal {
        if self <= 0 || isNaN { return .nan }
        else if self == 1 { return 0 }
        
        let dbl = (self as NSNumber).doubleValue
        if dbl.isNaN { return .nan }
        
        return newton(f_df: { 1 - (self / $0.exp())}, estimate: Decimal(Darwin.log(dbl)))
    }
    
    func log(base: Decimal) -> Decimal {
        if self <= 0 || base <= 0 || isNaN || base.isNaN { return .nan }
        else if self == 1 { return 0 }
        else if base == 1 { return .nan }
        else if self == base { return 1 }
        
        return self.ln() / base.ln()
    }
}

