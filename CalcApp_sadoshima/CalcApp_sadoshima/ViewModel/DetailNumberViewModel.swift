//
//  DetailNumberViewModel.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/05/13.
//

import Foundation
import Combine

final class DetailNumberViewModel: ObservableObject {
    var detailNumber: Decimal?
    
    private var cancellables: [AnyCancellable] = []
    
    init() {
        NumberObserver.shared.firstArgumentSubject
            .sink { [weak self] value in
                guard let self = self else { return }
                self.detailNumber = value
            }
            .store(in: &cancellables)
    }
}
