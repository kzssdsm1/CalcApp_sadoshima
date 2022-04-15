//
//  ConverterView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/28.
//

import SwiftUI

struct ConverterView: View {
    @StateObject var viewModel: HomeViewModel
    @StateObject private var viewModel2 = ConverterViewModel()
    
    @Binding var parentSelection: Category?
    
    @State private var pushedButton = ""
    @State private var selection: Unit?
    
    let category: Category
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
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
                            .foregroundColor(.offWhite)
                            .frame(width: 20)
                            .minimumScaleFactor(0.5)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(.darkGreen)
                            )
                    })
                        .padding(.leading, screenWidth * 0.01)
                    
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
                                    viewModel.displayUnit = item.unit
                                    viewModel2.convertUnit(item.value) 
                                }, label: {
                                    Text(item.label)
                                        .foregroundColor(pushedButton == item.label ? item.buttonColor : .offWhite)
                                        //.font(.title2)
                                        .font(.system(size: proxy.size.width * 0.033, weight: .medium))
                                        .minimumScaleFactor(0.35)
                                        .lineLimit(2)
                                        .padding()
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .aspectRatio(1.7, contentMode: .fit)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .foregroundColor(pushedButton == item.label ? .offWhite : item.buttonColor)
                                        )
                                })
                                    .padding(screenWidth * 0.01)
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
