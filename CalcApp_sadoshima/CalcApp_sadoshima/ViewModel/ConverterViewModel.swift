//
//  ConverterViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/01.
//

import Foundation
import Combine

final class ConverterViewModel: ObservableObject {
    private var firstArgument: Decimal? {
        didSet {
            guard firstArgument != oldValue else { return }
            
            NumberObserver.shared.firstArgumentSubject.send(firstArgument)
        }
    }
    private var cancellables: [AnyCancellable] = []
    
    init() {
        NumberObserver.shared.firstArgumentSubject
            .sink { [weak self] value in
                guard let self = self else { return }
                self.firstArgument = value
            }
            .store(in: &cancellables)
    }
    
    func convertUnit(_ strValue: String) {
        guard let firstArgument = firstArgument else { return }
        
        NumberObserver.shared.previousNumberSubject.send("\(firstArgument)")
        
        let secondArgument = convertToDecimal(strValue)
        let multiplied = firstArgument.mul(secondArgument)
        
        self.firstArgument = multiplied
        NumberObserver.shared.calculatedNumberSubject.send(multiplied)
        NumberObserver.shared.secondArgumentSubject.send(secondArgument)
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
}
