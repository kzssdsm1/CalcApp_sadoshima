//
//  NumberKeyboardView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/27.
//

import SwiftUI

struct NumberKeyboardView: View {
    @StateObject private var viewModel = NumberKeyboardViewModel()
    @State private var deci: Decimal?
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                deci = convertToDecimal("0.")
                print(deci ?? "no deci")
            }
    }
    
    private func convertToDecimal(_ strValue: String) -> Decimal {
        return Decimal(string: strValue, locale: Locale.current) ?? 0
    }
}
