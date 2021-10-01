//
//  CircleText.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/10/01.
//

import SwiftUI

struct CircleText: View {
    let text: String
    
    var body: some View {
        GeometryReader { proxy in
            if text == "0" {
                
            } else {
                Circle()
                    .foregroundColor(.orange)
                    .overlay(
                        Group {
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
                                    .font(.system(size: proxy.size.width * 0.4))
                                    .foregroundColor(.white)
                            }
                        }
                    )
            }
        } // GeometryReader
    } // body
}
