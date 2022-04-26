//
//  UnitSelectView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/11.
//

import SwiftUI

struct UnitSelectView: View {
    @Binding var displayingUnit: String
    
    @State private var selection: Category?
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    private let categories = [
        Category(label: "長さ", units: LengthData.lengths, buttonColor: Color.asahanada),
        Category(label: "重さ", units: WeightData.weights, buttonColor: Color.smalt),
        Category(label: "面積", units: AreaData.areas, buttonColor: Color.konruri)
        
    ]
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                if let item = selection {
                    ConverterView(parentSelection: $selection, displayingUnit: $displayingUnit, category: item)
                        .transition(AnyTransition.opacity.combined(with: .slide))
                }
                
                VStack(spacing: 0) {
                    HStack {
                        Text("カテゴリーを選択")
                            .font(.system(size: proxy.size.width * 0.05, weight: .medium))
                            .foregroundColor(Color.offWhite)
                            .padding()
                        
                        Spacer(minLength: 0)
                    } // HStack
                    
                    Spacer(minLength: 0)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(categories) { item in
                            Button(action: {
                                withAnimation {
                                    selection = item
                                }
                            }, label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(item.buttonColor)
                                    .frame(width: proxy.size.width * 0.26, height: screenHeight * 0.07)
                                    .overlay(
                                        Text(item.label)
                                            .font(.system(size: proxy.size.width * 0.035, weight: .medium))
                                            .foregroundColor(.offWhite)
                                    )
                            })
                                .padding(proxy.size.width * 0.01)
                        } // ForEach
                    } // LazyVGrid
                    
                    Spacer(minLength: 0)
                } // VStack
                .opacity(selection != nil ? 0 : 1)
            } // ZStack
            .frame(maxWidth: .infinity, maxHeight: screenHeight * 0.56)
            .background(Color.aozumi.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    }
}
