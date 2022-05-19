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
    
    var firstArgumentSubject = CurrentValueSubject<Decimal?, Never>(nil)
    var previousArgumentSubject = PassthroughSubject<Decimal?, Never>()
    var displayingNumberSubject = CurrentValueSubject<String, Never>("")
    var arrangedNumberSubject = CurrentValueSubject<String, Never>("")
    var canShowDetailNumber = PassthroughSubject<Bool, Never>()
    var convertArgumentSubject = CurrentValueSubject<Decimal?, Never>(nil)
    var previousNumberSubject = PassthroughSubject<String, Never>()
}
