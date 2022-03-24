//
//  CustomTabBar.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/25.
//

import SwiftUI

struct CustomTabBar: View {
    @StateObject var viewModel: HomeViewModel
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
            
            VStack {
                Image(systemName: "plus.slash.minus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 22, minHeight: 22)
                    .minimumScaleFactor(0.01)
                    .foregroundColor(.offWhite)
                    .layoutPriority(0)
                
                Text("計算機")
                    .font(.system(size: 27, weight: .medium))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .foregroundColor(.offWhite)
                    .layoutPriority(1)
            } // VStack
            .onTapGesture {
                withAnimation(.linear(duration: 0.2)) {
                    viewModel.selection = .Calculator
                    viewModel.displayUnit = ""
                    viewModel.setFontSize()
                    viewModel.isShowingPrevNum = false
                } // withAnimation
            }
            .opacity(viewModel.selection == .Calculator ? 1 : 0.7)
            
            Spacer(minLength: 0)
            
            VStack {
                Image(systemName: "arrow.triangle.2.circlepath")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 22, minHeight: 22)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(.offWhite)
                    .layoutPriority(0)
                
                Text("単位換算機")
                    .font(.system(size: 27, weight: .medium))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .foregroundColor(.offWhite)
                    .layoutPriority(1)
            } // VStack
            .onTapGesture {
                withAnimation(.linear(duration: 0.2)) {
                    viewModel.selection = .UnitConverter
                    viewModel.displayUnit = ""
                    viewModel.isShowingPrevNum = true
                } // withAnimation
            }
            .opacity(viewModel.selection == .UnitConverter ? 1 : 0.7)
            
            Spacer(minLength: 0)
        } // HStack
        .padding(.vertical)
        .frame(maxHeight: screenHeight * 0.1)
    } // body
}
