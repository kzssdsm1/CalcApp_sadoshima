//
//  CircleButton.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/05/11.
//

import SwiftUI

struct CircleButton: View {
    @Binding var operationsInProgress: Operator
    @Binding var canShowDetailNumber: Bool
    
    let text: String
    let buttonColor: Color
    
    var body: some View {
        GeometryReader { proxy in
            if text == "showdetail" {
                Circle()
                    .foregroundColor(canShowDetailNumber ? buttonColor : .gray)
                    .opacity(canShowDetailNumber ? 1 : 0.7)
                    .overlay(
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(
                                width: proxy.size.width * 0.3,
                                height: proxy.size.height * 0.3
                            )
                            .foregroundColor(.white)
                            .opacity(canShowDetailNumber ? 1 : 0.7)
                    )
            } else {
                Circle()
                    .foregroundColor(text == operationsInProgress.buttonText(false) ? .offWhite : buttonColor)
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
                                    .foregroundColor(text == operationsInProgress.buttonText(false) ? .orange : .offWhite)
                            }
                        }
                    )
            }
        } // GeometryReader
    } // body
}
