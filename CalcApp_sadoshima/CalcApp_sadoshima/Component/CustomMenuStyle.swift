//
//  CustomMenuStyle.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/11.
//

import SwiftUI

struct CustomMenuStyle: MenuStyle {
    func makeBody(configuration: Configuration) -> some View {
        Menu(configuration)
            .foregroundColor(Color.konruri)
    }
}
