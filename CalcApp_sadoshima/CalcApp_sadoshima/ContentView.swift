//
//  ContentView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    // 入力された数値及び演算子を格納する状態変数
    @State private var displayingNum = "0"
    // ディスプレイテキストのフォントサイズ
    @State private var fontSize: CGFloat = .zero
    @State private var isCalculating: Operator = .none
    @State private var argument1: Double?
    @State private var argument2: Double = 0
    @State private var isNotInserting = false
    
    // 各ボタンの標準の横幅
    private let buttonWidth = CGFloat(UIScreen.main.bounds.width) * 0.19
    // ForEachで回すための数値を格納した配列
    private let numbers = [["7", "8", "9"], ["4", "5", "6"], ["1", "2", "3"]]
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing ,spacing: 0) {
                Spacer(minLength: 0)
                
                // 入力された数値及び演算子のディスプレイ
                Text(displayingNum)
                    .font(.system(size: fontSize, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    VStack {
                        HStack {
                            ForEach(Operator.allCases, id: \.self) { item in
                                if item == .percent || item == .allClear || item == .plusMinus {
                                    Button(action: {
                                        setOperator(item)
                                    }, label: {
                                        CircleText(text: item.buttonText(displayingNum == "0" && isCalculating == .none), buttonColor: .gray)
                                        
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
                                        if displayingNum.count > 5 {
                                            fontSize = proxy.size.width * 0.2 - CGFloat((displayingNum.count - 5)) * (proxy.size.width * 0.02)
                                        } else {
                                            fontSize = proxy.size.width * 0.2
                                        }
                                        
                                        insertNumber(numbers[row][col])
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
                                insertNumber("0")
                            }, label: {
                                CircleText(text: "0", buttonColor: .gray)
                                
                            })
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
                        ForEach(Operator.allCases, id: \.self) { item in
                            if item == .percent || item == .allClear || item == .plusMinus || item == .none {
                                EmptyView()
                            } else {
                                Button(action: {
                                    setOperator(item)
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
    
    private func insertNumber(_ text: String) {
        if isNotInserting || displayingNum == "0" {
            displayingNum = ""
            isNotInserting = false
        }
        
        displayingNum += text
        
        argument2 = Double(displayingNum)!
        print(argument2)
    }
    
    private func setOperator(_ paramOperator: Operator) {
        isNotInserting = true
        
        switch paramOperator {
        case .percent:
            return
        case .divide:
            if argument1 == nil {
                argument1 = argument2
            } else {
                argument1! /= argument2
            }
            
            if isCalculating != .none {
                if argument1!.truncatingRemainder(dividingBy: 1.0) == 0 {
                    let num = Int(argument1!)
                    displayingNum = String(num)
                    setFontSize()
                } else {
                    displayingNum = String(argument1!)
                    setFontSize()
                }
            }
            
            isCalculating = paramOperator
        case .multiply:
            if argument1 == nil {
                argument1 = argument2
            } else {
                argument1! *= argument2
            }
            
            if isCalculating != .none {
                if argument1!.truncatingRemainder(dividingBy: 1.0) == 0 {
                    let num = Int(argument1!)
                    displayingNum = String(num)
                    setFontSize()
                } else {
                    displayingNum = String(argument1!)
                    setFontSize()
                }
            }
            
            isCalculating = paramOperator
        case .subtraction:
            if argument1 == nil {
                argument1 = argument2
            } else {
                argument1! -= argument2
            }
            
            if isCalculating != .none {
                if argument1!.truncatingRemainder(dividingBy: 1.0) == 0 {
                    let num = Int(argument1!)
                    displayingNum = String(num)
                    setFontSize()
                } else {
                    displayingNum = String(argument1!)
                    setFontSize()
                }
            }
            
            isCalculating = paramOperator
        case .addition:
            if argument1 == nil {
                argument1 = argument2
            } else {
                argument1! += argument2
            }
            
            if isCalculating != .none {
                if argument1!.truncatingRemainder(dividingBy: 1.0) == 0 {
                    let num = Int(argument1!)
                    displayingNum = String(num)
                    setFontSize()
                } else {
                    displayingNum = String(argument1!)
                    setFontSize()
                }
            }
            
            isCalculating = paramOperator
        case .equal:
            switch isCalculating {
            case .percent:
                return
            case .divide:
                argument1! /= argument2
            case .multiply:
                argument1! *= argument2
            case .subtraction:
                argument1! -= argument2
            case .addition:
                argument1! += argument2
            case .equal:
                return
            case .none:
                return
            case .plusMinus:
                return
            case .allClear:
                return
            }
            
            if argument1!.truncatingRemainder(dividingBy: 1.0) == 0 {
                let num = Int(argument1!)
                displayingNum = String(num)
            } else {
                displayingNum = String(argument1!)
            }
            
            setFontSize()
            argument2 = 0
            isCalculating = .none
            isNotInserting = false
        case .none:
            return
        case .plusMinus:
            return
        case .allClear:
            displayingNum = "0"
            argument1 = nil
            argument2 = 0
            isCalculating = .none
            isNotInserting = false
            setFontSize()
        }
    }
    
    private func setFontSize() {
        if displayingNum.count > 5 {
            fontSize = CGFloat(UIScreen.main.bounds.width) * 0.2 - CGFloat((displayingNum.count - 5)) * (CGFloat(UIScreen.main.bounds.width) * 0.02)
        } else {
            fontSize = CGFloat(UIScreen.main.bounds.width) * 0.2
        }
    }
}
