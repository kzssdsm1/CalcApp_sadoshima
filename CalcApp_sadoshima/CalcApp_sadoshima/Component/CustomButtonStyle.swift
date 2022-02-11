//
//  CustomButtonStyle.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/11.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(configuration.isPressed ? Color.offWhite : Color.konruri)
            .background(Color(configuration.isPressed ? .gray : .yellow))
            .opacity(configuration.isPressed ? 1 : 0.75)
            .clipShape(Capsule())
    }
}
