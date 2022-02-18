//
//  HomeView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var selection: Selection = .Calculator
    @State private var unit = ""
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    private enum Selection {
        case Calculator
        case UnitConverter
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing, spacing: 0) {
                VStack {
                    Spacer(minLength: 0)
                    
                    Text(viewModel.displayingNum + unit)
                        .font(.system(size: viewModel.fontSize, weight: .medium))
                        .foregroundColor(.offWhite)
                        .padding(.horizontal)
                } // VStack
                .frame(height: proxy.size.height * 0.28)
                
                ZStack(alignment: .bottom) {
                    CalcKeyboardView(viewModel: viewModel)
                        .opacity(selection == .Calculator ? 1 : 0)
                        .offset(x: selection == .Calculator ? 0 : -500)
                    
                    UnitSelectView(viewModel: viewModel)
                        .opacity(selection == .UnitConverter ? 1 : 0)
                        .offset(x: selection == .UnitConverter ? 0 : -500)
                } // ZStack
                
                Picker("", selection: $selection.animation(.linear(duration: 0.2))) {
                    Text("計算機").tag(Selection.Calculator)
                    Text("単位換算機").tag(Selection.UnitConverter)
                } // Picker
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            } // VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(Color.aozumi.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    } // body
}
