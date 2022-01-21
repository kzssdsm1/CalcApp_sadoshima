//
//  CircleText.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/10/01.
//

import SwiftUI

struct CircleText: View {
    @Binding var isCalculating: Operator
    
    let text: String
    let buttonColor: Color
    
    var body: some View {
        GeometryReader { proxy in
            if text == "0" {
                RoundedRectangle(cornerRadius: 60)
                    .foregroundColor(buttonColor)
                    .overlay(
                        HStack {
                            Text(text)
                                .font(.system(size: proxy.size.width * 0.2, weight: .medium))
                                .foregroundColor(.offWhite)
                                .padding(.leading, proxy.size.width * 0.16)
                            
                            Spacer(minLength: 0)
                        } // HStack
                    )
            } else {
                Circle()
                    .foregroundColor(text == isCalculating.buttonText(false) ? .offWhite : buttonColor)
                    .overlay(
                        Group {
                            // 符号反転ボタンのみSF Symbolsを使用
                            if text == Operator.plusMinus.buttonText(false) {
                                Image(systemName: "plus.slash.minus")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(
                                        width: proxy.size.width * 0.3,
                                        height: proxy.size.height * 0.3
                                    )
                                    .foregroundColor(.white)
                            } else {
                                Text(text)
                                    .font(.system(size: proxy.size.width * 0.4, weight: .medium))
                                    .foregroundColor(text == isCalculating.buttonText(false) ? .orange : .offWhite)
                            }
                        }
                    )
            }
        } // GeometryReader
    } // body
}
