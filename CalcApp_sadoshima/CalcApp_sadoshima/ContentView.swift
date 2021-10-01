//
//  ContentView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    private let buttonWidth = CGFloat(UIScreen.main.bounds.width) * 0.19
    private let operators: [Operator] = [.divide, .multiply, .subtraction, .addition, .equal]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(operators, id: \.self) { item in
                CircleText(text: item.rawValue)
                    .frame(width: buttonWidth, height: buttonWidth)
                    .padding()
            }
        } // VStack
    } // body
}
