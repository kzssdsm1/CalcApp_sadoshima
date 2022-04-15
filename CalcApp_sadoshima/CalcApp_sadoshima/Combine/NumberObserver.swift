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
    
    var firstArgumentSubject = PassthroughSubject<Decimal, Never>()
    var secondArgumentSubject = PassthroughSubject<Decimal, Never>()
    var displayingNumberSubject = PassthroughSubject<String, Never>()
}
