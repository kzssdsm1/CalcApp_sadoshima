//
//  CalcKeyboardView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import SwiftUI

struct CalcKeyboardView: View {
    @StateObject var viewModel: HomeViewModel
    
    private let numbers = [["7", "8", "9"], ["4", "5", "6"], ["1", "2", "3"]]
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                HStack {
                    VStack {
                        HStack {
                            ForEach(Operator.allCases, id: \.self) { item in
                                if item == .percent || item == .allClear || item == .plusMinus {
                                    Button(action: {
                                        viewModel.setOperator(item)
                                    }, label: {
                                        CircleText(isCalculating: $viewModel.isPressing, text: item.buttonText(viewModel.displayingNum == "0" && viewModel.isCalculating == .none), buttonColor: .asahanada)
                                        
                                    })
                                        .frame(width: proxy.size.width * 0.19, height: proxy.size.width * 0.19)
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
                                        CircleText(isCalculating: $viewModel.isPressing, text: numbers[row][col], buttonColor: .smalt)
                                        
                                    })
                                        .frame(width: proxy.size.width * 0.19, height: proxy.size.width * 0.19)
                                        .padding(proxy.size.width * 0.01)
                                } // ForEach
                            } // HStack
                        } // ForEach
                        
                        HStack {
                            // 0だけ横幅が大きいの別途設定
                            Button(action: {
                                viewModel.insertNumber("0")
                            }, label: {
                                CircleText(isCalculating: $viewModel.isPressing, text: "0", buttonColor: .smalt)
                                
                            })
                                .frame(width: proxy.size.width * 0.19 * 2.2, height: proxy.size.width * 0.19)
                                .padding(proxy.size.width * 0.01)
                            
                            // 小数点ボタン
                            Button(action: {
                                viewModel.insertDecimalPoint()
                            }, label: {
                                CircleText(isCalculating: $viewModel.isPressing, text: ".", buttonColor: .smalt)
                                
                            })
                                .frame(width: proxy.size.width * 0.19, height: proxy.size.width * 0.19)
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
                                        buttonColor: .konruri
                                    )
                                    
                                })
                                    .frame(width: proxy.size.width * 0.19, height: proxy.size.width * 0.19)
                                    .padding(proxy.size.width * 0.01)
                            }
                        } // ForEach
                    } // VStack
                } // HStack
            } // VStack
            .onAppear() {
                viewModel.fontSize = proxy.size.width * 0.2
                viewModel.dispSize = proxy.size.width
            } // onAppear
            //.frame(minHeight: screenHeight * 0.56)
            .frame(maxWidth: .infinity, maxHeight: screenHeight * 0.56)
            .background(Color.red)
        } // GeometryReader
    } // body
}
