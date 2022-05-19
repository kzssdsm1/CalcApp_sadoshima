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
    private var previousNumber = "" {
        didSet {
            guard previousNumber != oldValue else { return }
            
            NumberObserver.shared.previousNumberSubject.send(previousNumber)
        }
    }
    private var arrangedNumber = ""
    private var cancellables: [AnyCancellable] = []
    
    init() {
        bind()
    }
    
    private func bind() {
        let arrangedNumberSubscriber = NumberObserver.shared.arrangedNumberSubject
            .sink { [weak self] value in
                guard let self = self else { return }
                self.arrangedNumber = value
            }
        
        let converArgumentSubscriber = NumberObserver.shared.convertArgumentSubject
            .sink { [weak self] value in
                guard let self = self else { return }
                self.firstArgument = value
            }
        
        cancellables += [
            arrangedNumberSubscriber,
            converArgumentSubscriber
        ]
    }
    
    func convertUnit(strValue: String, unit: String) {
        guard let firstArgument = firstArgument else { return }
        
        let sendString = "\(arrangedNumber) \(unit) ="
        print("send is \(sendString)")
        let secondArgument = convertToDecimal(strValue)
        let multiplied = firstArgument.mul(secondArgument)
        
        self.firstArgument = multiplied
        
        NumberObserver.shared.firstArgumentSubject.send(self.firstArgument)
        NumberObserver.shared.previousArgumentSubject.send(secondArgument)
        NumberObserver.shared.displayingNumberSubject.send("\(multiplied)")
        previousNumber = sendString
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
}
