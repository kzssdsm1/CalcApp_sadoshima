//
//  NumberObserver.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/01.
//

import Foundation
import Combine

final class NumberObserver {
    static let shared = NumberObserver()
    
    private init() {}
    
    var firstArgumentSubject = CurrentValueSubject<Decimal, Never>(0)
    var secondArgumentSubject = CurrentValueSubject<Decimal, Never>(0)
    var calculatedNumberSubject = CurrentValueSubject<Decimal, Never>(0)
    var displayingNumberSubject = CurrentValueSubject<String, Never>("")
}
