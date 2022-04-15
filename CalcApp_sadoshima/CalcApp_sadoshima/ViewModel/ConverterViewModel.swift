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
            .receive(on: DispatchQueue.main)
            .sink { [weak self] value in
                guard let self = self else { return }
                self.firstArgument = value
            }
            .store(in: &cancellables)
    }
    
    func convertUnit(_ secondArgument: Decimal) {
        guard let firstArgument = firstArgument else { return }
        
        let multiplied = firstArgument.mul(secondArgument)
        
        NumberObserver.shared.firstArgumentSubject.send(multiplied)
    }
}
