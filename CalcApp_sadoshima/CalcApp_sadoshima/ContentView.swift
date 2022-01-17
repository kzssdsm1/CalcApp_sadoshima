//
//  ContentView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()
    
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
                    .font(.system(size: viewModel.fontSize, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    VStack {
                        HStack {
                            ForEach(Operator.allCases, id: \.self) { item in
                                if item == .percent || item == .allClear || item == .plusMinus {
                                    Button(action: {
                                        viewModel.setOperator(item)
                                    }, label: {
                                        CircleText(isCalculating: $viewModel.isPressing, text: item.buttonText(viewModel.displayingNum == "0" && viewModel.isCalculating == .none), buttonColor: .gray)
                                        
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
                                        viewModel.insertNumber(numbers[row][col])
                                    }, label: {
                                        CircleText(isCalculating: $viewModel.isPressing, text: numbers[row][col], buttonColor: .gray)
                                        
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
                            }, label: {
                                CircleText(isCalculating: $viewModel.isPressing, text: "0", buttonColor: .gray)
                                
                            })
                                .frame(width: buttonWidth * 2.2, height: buttonWidth)
                                .padding(proxy.size.width * 0.01)
                            
                            // 小数点ボタン
                            Button(action: {
                                viewModel.insertDecimalPoint()
                            }, label: {
                                CircleText(isCalculating: $viewModel.isPressing, text: ".", buttonColor: .gray)
                                
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
                                }, label: {
                                    CircleText(
                                        isCalculating: $viewModel.isPressing,
                                        text: item.buttonText(false),
                                        buttonColor: .orange
                                    )
                                    
                                })
                                    .frame(width: buttonWidth, height: buttonWidth)
                                    .padding(proxy.size.width * 0.01)
                            }
                        } // ForEach
                    } // VStack
                } // HStack
            } // VStack
            .onAppear() {
                viewModel.fontSize = proxy.size.width * 0.2
                viewModel.dispSize = proxy.size.width
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) // このmodifierを設定しないと画面が左に寄ってしまう(SwiftUI由来のバグ)
            .background(Color.black.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    } // body
}
