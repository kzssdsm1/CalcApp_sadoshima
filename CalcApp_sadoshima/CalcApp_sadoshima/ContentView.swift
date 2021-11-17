//
//  ContentView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()
    
    // ディスプレイテキストのフォントサイズ
    @State private var fontSize: CGFloat = .zero
    // 各ボタンの標準の横幅
    private let buttonWidth = CGFloat(UIScreen.main.bounds.width) * 0.19
    // ForEachで回すための数値を格納した配列
    private let numbers = [["7", "8", "9"], ["4", "5", "6"], ["1", "2", "3"]]
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing ,spacing: 0) {
                Spacer(minLength: 0)
                
                // 入力された数値及び演算子のディスプレイ
                Text(viewModel.displayingNum)
                    .font(.system(size: fontSize, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    VStack {
                        HStack {
                            ForEach(Operator.allCases, id: \.self) { item in
                                if item == .percent || item == .allClear || item == .plusMinus {
                                    Button(action: {
                                        viewModel.setOperator(item)
                                        setFontSize()
                                    }, label: {
                                        CircleText(text: item.buttonText(viewModel.displayingNum == "0" && viewModel.isCalculating == .none), buttonColor: .gray)
                                        
                                    })
                                        .frame(width: buttonWidth, height: buttonWidth)
                                        .padding(proxy.size.width * 0.01)
                                } else {
                                    EmptyView()
                                }
                            } // ForEach
                        } // HStack
                        
                        // 数値ボタン
                        ForEach(0...2, id: \.self) { row in
                            HStack {
                                ForEach(0...2, id: \.self) { col in
                                    Button(action: {
                                        // Textのmodifierで設定しようとするとネストが深くなりすぎてコンパイルが通らないのでここで数値の桁数に依ってフォントのサイズを変更する
                                        if viewModel.displayingNum.count > 5 {
                                            fontSize = proxy.size.width * 0.2 - CGFloat((viewModel.displayingNum.count - 5)) * (proxy.size.width * 0.02)
                                        } else {
                                            fontSize = proxy.size.width * 0.2
                                        }
                                        
                                        viewModel.insertNumber(numbers[row][col])
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
                            Button(action: {
                                viewModel.insertNumber("0")
                                setFontSize()
                            }, label: {
                                CircleText(text: "0", buttonColor: .gray)
                                
                            })
                                .frame(width: buttonWidth * 2.2, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                            
                            // 小数点ボタン
                            Button(action: {
                                viewModel.insertDecimalPoint()
                                setFontSize()
                            }, label: {
                                CircleText(text: ".", buttonColor: .gray)
                                
                            })
                                .frame(width: buttonWidth, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                        } // HStack
                    } // VStack
                    
                    // 演算子ボタン
                    VStack {
                        ForEach(Operator.allCases, id: \.self) { item in
                            if item == .percent || item == .allClear || item == .plusMinus || item == .none {
                                EmptyView()
                            } else {
                                Button(action: {
                                    viewModel.setOperator(item)
                                    setFontSize()
                                }, label: {
                                    CircleText(text: item.buttonText(false), buttonColor: .orange)
                                    
                                })
                                    .frame(width: buttonWidth, height: buttonWidth)
                                    .padding(proxy.size.width * 0.01)
                            }
                        } // ForEach
                    } // VStack
                } // HStack
            } // VStack
            .onAppear() {
                fontSize = proxy.size.width * 0.2
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) // このmodifierを設定しないと画面が左に寄ってしまう(SwiftUI由来のバグ)
            .background(Color.black.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    } // body
    
    private func setFontSize() {
        if viewModel.displayingNum.count > 5 {
            fontSize = CGFloat(UIScreen.main.bounds.width) * 0.2 - CGFloat((viewModel.displayingNum.count - 5)) * (CGFloat(UIScreen.main.bounds.width) * 0.02)
        } else {
            fontSize = CGFloat(UIScreen.main.bounds.width) * 0.2
        }
    }
}
