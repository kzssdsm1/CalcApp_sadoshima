//
//  Operator.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/10/01.
//

import Foundation

enum Operator: CaseIterable {
    case allClear
    case plusMinus
    case percent
    case divide
    case multiply
    case subtraction
    case addition
    case equal
    case detail
    case none
    
    func buttonText(_ isAC: Bool) -> String {
        switch self {
        case .percent:
            return "%"
        case .divide:
            return "÷"
        case .multiply:
            return "×"
        case .subtraction:
            return "-"
        case .addition:
            return "+"
        case .equal:
            return "="
        case .plusMinus:
            return "plusminus"
        case .allClear:
            if isAC {
                return "AC"
            } else {
                return "C"
            }
        case .detail:
            return "showdetail"
        case .none:
            return ""
        }
    }
}
