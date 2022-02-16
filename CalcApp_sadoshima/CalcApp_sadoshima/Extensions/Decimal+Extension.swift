//
//  Decimal+Extension.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/18.
//

import Foundation

extension Decimal {
    var abs: Decimal {
        return self < 0 ? -self : self
    }
    
    func mul(_ y: Decimal) -> Decimal {
        let r = self * y
        if self.abs < 1 && y.abs < 1 && r.abs >= 1 {
            return .nan
        }
        return r
    }
    
    func log(base: Decimal) -> Decimal {
        if self <= 0 || base <= 0 || isNaN || base.isNaN { return .nan }
        else if self == 1 { return 0 }
        else if base == 1 { return .nan }
        else if self < 1 { return (1 / self).log(base: base) * -1 }
        else if base < 1 { return log(base: 1 / base) * -1 }
        else if self < base { return 1 / base.log(base: self) }
        
        var number = self
        var coef: Decimal = 1
        var result: Decimal = 0, next: Decimal = 0
        while true {
            if number == base {
                result += coef
                break
            } else if number == 1 {
                break
            } else if number > base {
                next += coef
                number /= base
                if next.isNaN || next == result {
                    break
                }
                result = next
            } else {
                coef /= 2
                number = number.mul(number)
            }
        }
        return result
    }
}
