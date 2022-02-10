//
//  ConverterView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/28.
//

import SwiftUI

struct ConverterView: View {
    @State private var pushedButton = ""
    @State private var selection: [Conversion]?
    
    let unit: Unit
    
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    Menu {
                        Button(action: {
                            // do something
                        }, label: {
                            Text("Item1")
                        })
                        Button(action: {
                            // do something
                        }, label: {
                            Text("Item2")
                        })
                    } label: {
                        Text("Menu")
                    }
                    
                    if let items = selection {
                        LazyVGrid(columns: columns) {
                            ForEach(items) { item in
                                Button(action: {
                                    pushedButton = item.label
                                }, label: {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(pushedButton == item.label ? .offWhite : item.buttonColor)
                                        .frame(width: proxy.size.width * 0.26, height: proxy.size.height * 0.11)
                                        .overlay(
                                            Text(item.label)
                                                .font(.system(size: proxy.size.width * 0.035, weight: .medium))
                                                .foregroundColor(pushedButton == item.label ? item.buttonColor : .offWhite)
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
            selection = unit.conversions
        }
    } // body
}
