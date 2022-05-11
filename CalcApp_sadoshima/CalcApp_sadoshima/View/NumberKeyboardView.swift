//
//  NumberKeyboardView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/27.
//

import SwiftUI

struct NumberKeyboardView: View {
    @StateObject private var viewModel = NumberKeyboardViewModel()
    
    //@Binding var detailNumberItem: Decimal?
    
    private let numbers = [["7", "8", "9"], ["4", "5", "6"], ["1", "2", "3"]]
    private let padding = CGFloat(UIScreen.main.bounds.width) * 0.01
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack {
                    HStack {
                        ForEach(Operator.allCases, id: \.self) { item in
                            if item == .detail || item == .allClear || item == .percent {
                                Button(action: {
                                    if item == .detail && viewModel.canShowDetailNumber {
                                        //detailNumberItem = viewModel.firstArgument!
                                    }
                                    //viewModel.setOperator(item)
                                }, label: {
                                    CircleButton(
                                        operationsInProgress: $viewModel.operationsInProgress,
                                        canShowDetailNumber: $viewModel.canShowDetailNumber,
                                        text: item.buttonText(viewModel.operationsInProgress == .none && viewModel.previousOperation == .none),
                                        buttonColor: .asahanada
                                    )
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
                                    CircleButton(
                                        operationsInProgress: $viewModel.operationsInProgress,
                                        canShowDetailNumber: $viewModel.canShowDetailNumber,
                                        text: numbers[row][col],
                                        buttonColor: .smalt
                                    )
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
                            CircleButton(
                                operationsInProgress: $viewModel.operationsInProgress,
                                canShowDetailNumber: $viewModel.canShowDetailNumber,
                                text: "0",
                                buttonColor: .smalt
                            )
                        })
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .padding(padding)
                        
                        // 小数点ボタン
                        Button(action: {
                            viewModel.insertDecimalPoint()
                        }, label: {
                            CircleButton(
                                operationsInProgress: $viewModel.operationsInProgress,
                                canShowDetailNumber: $viewModel.canShowDetailNumber,
                                text: ".",
                                buttonColor: .smalt
                            )
                        })
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .padding(padding)
                        
                        // 符号反転ボタン
                        Button(action: {
                            
                        }, label: {
                            CircleButton(
                                operationsInProgress: $viewModel.operationsInProgress,
                                canShowDetailNumber: $viewModel.canShowDetailNumber,
                                text: Operator.plusMinus.buttonText(false),
                                buttonColor: .smalt
                            )
                        })
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .padding(padding)
                    } // HStack
                } // VStack
                
                // 演算子ボタン
                VStack {
                    ForEach(Operator.allCases, id: \.self) { item in
                        if item == .detail || item == .percent || item == .allClear || item == .plusMinus || item == .none {
                            EmptyView()
                        } else {
                            Button(action: {
                                //                                viewModel.setOperator(item)
                            }, label: {
                                CircleButton(
                                    operationsInProgress: $viewModel.operationsInProgress,
                                    canShowDetailNumber: $viewModel.canShowDetailNumber,
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
        .padding()
        .background(Color.aozumi)
    } // body
}
