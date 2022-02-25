//
//  TestView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/25.
//

import SwiftUI

struct TestView: View {
    @StateObject var viewModel: HomeViewModel
    
    private let numbers = [["7", "8", "9"], ["4", "5", "6"], ["1", "2", "3"]]
    private let padding = CGFloat(UIScreen.main.bounds.width) * 0.01
    
    var body: some View {
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
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .aspectRatio(1, contentMode: .fit)
                                    .padding(padding)
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
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .aspectRatio(1, contentMode: .fit)
                                    .padding(padding)
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
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(2.3, contentMode: .fit)
                            .padding(padding)
                        
                        // 小数点ボタン
                        Button(action: {
                            viewModel.insertDecimalPoint()
                        }, label: {
                            CircleText(isCalculating: $viewModel.isPressing, text: ".", buttonColor: .smalt)
                            
                        })
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .padding(padding)
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
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .aspectRatio(1, contentMode: .fit)
                                .padding(padding)
                        }
                    } // ForEach
                } // VStack
            } // HStack
        } // VStack
        .onAppear() {
            viewModel.fontSize = CGFloat(UIScreen.main.bounds.width) * 0.2
            viewModel.dispSize = CGFloat(UIScreen.main.bounds.width)
        } // onAppear
        .padding()
        .background(Color.aozumi)
    } // body
}
