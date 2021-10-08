//
//  ContentView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    // 入力された数値及び演算子を格納する状態変数
    @State private var inputText = ""
    // ディスプレイテキストのフォントサイズ
    @State private var fontSize: CGFloat = .zero
    
    // 各ボタンの標準の横幅
    private let buttonWidth = CGFloat(UIScreen.main.bounds.width) * 0.19
    // ForEachで回すための演算子を格納した配列
    private let operators: [Operator] = [.divide, .multiply, .subtraction, .addition, .equal]
    // ForEachで回すための数値を格納した配列
    private let numbers = [["7", "8", "9"], ["4", "5", "6"], ["1", "2", "3"]]
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing ,spacing: 0) {
                Spacer(minLength: 0)
                
                // 入力された数値及び演算子のディスプレイ
                Text(inputText)
                    .font(.system(size: fontSize, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    VStack {
                        HStack {
                            // ディスプレイのクリアボタン
                            Button(action: {
                                inputText = ""
                            }, label: {
                                CircleText(text: "AC", buttonColor: .gray)
                                
                            })
                                .frame(width: buttonWidth, height: buttonWidth)
                                .padding(proxy.size.width * 0.01) // 子ビューのmodifierを親ビューは認識しない様なので親ビューでサイズや余白を設定しないとレイアウトが崩れる
                            
                            // 符号反転ボタン
                            CircleText(text: "plusminus", buttonColor: .gray)
                                .frame(width: buttonWidth, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                            
                            // 等号ボタン
                            CircleText(text: Operator.persent.rawValue, buttonColor: .gray)
                                .frame(width: buttonWidth, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                        } // HStack
                        
                        // 数値ボタン
                        ForEach(0...2, id: \.self) { row in
                            HStack {
                                ForEach(0...2, id: \.self) { col in
                                    Button(action: {
                                        // Textのmodifierで設定しようとするとネストが深くなりすぎてコンパイルが通らないのでここで数値の桁数に依ってフォントのサイズを変更する
                                        if inputText.count > 5 {
                                            fontSize = proxy.size.width * 0.2 - CGFloat((inputText.count - 5)) * (proxy.size.width * 0.02)
                                        } else {
                                            fontSize = proxy.size.width * 0.2
                                        }
                                        inputText += numbers[row][col]
                                    }, label: {
                                        CircleText(text: numbers[row][col], buttonColor: .gray)
                                        
                                    })
                                        .frame(width: buttonWidth, height: buttonWidth)
                                        .padding(proxy.size.width * 0.01)
                                } // ForEach
                            } // HStack
                        } // ForEach
                        
                        HStack {
                            // 0だけ横幅が大きいの別途設定
                            CircleText(text: "0", buttonColor: .gray)
                                .frame(width: buttonWidth * 2.2, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                            
                            // 小数点ボタン
                            CircleText(text: ".", buttonColor: .gray)
                                .frame(width: buttonWidth, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                        } // HStack
                    } // VStack
                    
                    // 演算子ボタン
                    VStack {
                        ForEach(operators, id: \.self) { item in
                            CircleText(text: item.rawValue, buttonColor: .orange)
                                .frame(width: buttonWidth, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                        } // ForEach
                    } // VStack
                } // HStack
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) // このmodifierを設定しないと画面が左に寄ってしまう(SwiftUI由来のバグ)
            .background(Color.black.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    } // body
}
