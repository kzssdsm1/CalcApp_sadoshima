//
//  ConverterViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/01.
//

import Foundation
import Combine

final class ConverterViewModel: ObservableObject {
    private var firstArgument: Decimal?
    private var cancellables: [AnyCancellable] = []
    
    init() {
        NumberObserver.shared.firstArgumentSubject
            //.receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.firstArgument = value
            }
            .store(in: &cancellables)
        
        print(firstArgument ?? "No Data")
    }
    
    func convertUnit(_ strValue: String) {
        guard let firstArgument = firstArgument else { return }
        
        let secondArgument = convertToDecimal(strValue)
        let multiplied = firstArgument.mul(secondArgument)
        
        NumberObserver.shared.firstArgumentSubject.send(multiplied)
        NumberObserver.shared.calculatedNumberSubject.send(multiplied)
        NumberObserver.shared.secondArgumentSubject.send(secondArgument)
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
}
