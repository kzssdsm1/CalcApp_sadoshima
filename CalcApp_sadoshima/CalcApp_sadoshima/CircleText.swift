//
//  CircleText.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/10/01.
//

import SwiftUI

struct CircleText: View {
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
                                .foregroundColor(.white)
                                .padding(.leading, proxy.size.width * 0.16)
                            
                            Spacer(minLength: 0)
                        } // HStack
                    )
            } else {
                Circle()
                    .foregroundColor(buttonColor)
                    .overlay(
                        Group {
                            // 符号反転ボタンのみSF Symbolsを使用
                            if text == "plusminus" {
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
                                    .foregroundColor(.white)
                            }
                        }
                    )
            }
        } // GeometryReader
    } // body
}
