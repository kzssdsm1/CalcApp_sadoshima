//
//  ConverterView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/28.
//

import SwiftUI

struct ConverterView: View {
    @StateObject var viewModel: HomeViewModel
    
    @Binding var parentSelection: Category?
    
    @State private var pushedButton = ""
    @State private var selection: Unit?
    
    let category: Category
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                HStack {
                    Button(action: {
                        withAnimation {
                            parentSelection = nil
                        }
                    }, label: {
                        Image(systemName: "arrow.uturn.backward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width * 0.033)
                            .foregroundColor(.offWhite)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(.darkGreen)
                                    .frame(height: screenHeight * 0.04)
                            )
                    })
                        .padding(.leading)
                    
                    Text("基準単位を選択：")
                        .font(.system(size: proxy.size.width * 0.033, weight: .medium))
                        .foregroundColor(Color.offWhite)
                        .padding(.leading)
                    
                    Menu {
                        ForEach(category.units) { item in
                            Button(action: {
                                selection = item
                            }, label: {
                                Text(item.label)
                            })
                        } // ForEach
                    } label: {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color.konruri)
                            .frame(height: screenHeight * 0.05)
                            .overlay(
                                Text(selection?.label ?? "単位を選択")
                                    .font(.system(size: proxy.size.width * 0.032, weight: .medium))
                                    .foregroundColor(Color.offWhite)
                                    .padding(proxy.size.width * 0.01)
                            )
                    } // Menu
                    .padding()
                    
                    Spacer(minLength: 0)
                } // HStack
                
                ScrollView(.vertical, showsIndicators: true) {
                    if let items = selection {
                        LazyVGrid(columns: columns) {
                            ForEach(items.conversions) { item in
                                Button(action: {
                                    pushedButton = item.label
                                    viewModel.setPrevNum(selection!.unit)
                                    viewModel.unit = item.unit
                                    viewModel.convertUnit(item.value)
                                }, label: {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(pushedButton == item.label ? .offWhite : item.buttonColor)
                                        .frame(width: proxy.size.width * 0.26, height: screenHeight * 0.07)
                                        .overlay(
                                            Text(item.label)
                                                .font(.system(size: proxy.size.width * 0.031, weight: .medium))
                                                .foregroundColor(pushedButton == item.label ? item.buttonColor : .offWhite)
                                                .padding(proxy.size.width * 0.01)
                                        )
                                })
                                    .padding(proxy.size.width * 0.01)
                            } // ForEach
                        } // LazyVGrid
                    }
                } // ScrollView
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.aozumi.edgesIgnoringSafeArea(.all))
        } // GeometryReader
        .onAppear() {
            selection = category.units[0]
        }
    } // body
}
