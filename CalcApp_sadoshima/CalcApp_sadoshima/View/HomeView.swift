//
//  HomeView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import SwiftUI
import MobileCoreServices

struct HomeView: View {
    @State private var isShowingNotification = false
    @State private var isShowingSheet = false
    @State private var selection: Selection = .Calculator
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top) {
                VStack(alignment: .trailing, spacing: 0) {
                    
                    NumberDisplayView(
                        isShowingSheet: $isShowingSheet,
                        isShowingNotification: $isShowingNotification,
                        selection: $selection
                    )
                    
                    ZStack(alignment: .bottom) {
                        NumberKeyboardView(isShowingSheet: $isShowingSheet) 
                            .opacity(selection == .Calculator ? 1 : 0)
                            .offset(x: selection == .Calculator ? 0 : -500)
                        
                        UnitSelectView()
                            .opacity(selection == .UnitConverter ? 1 : 0)
                            .offset(x: selection == .UnitConverter ? 0 : -500)
                    } // ZStack
                    
                    CustomTabBar(selection: $selection)
                } // VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .background(Color.aozumi.edgesIgnoringSafeArea(.all))
                .sheet(isPresented: $isShowingSheet) {
                    DetailNumberView()
                }
                
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 120, height: 45)
                    .foregroundColor(.offWhite)
                    .overlay(
                        Text("コピーしました")
                            .font(.system(size: 14))
                            .foregroundColor(.smalt)
                    )
                    .offset(y: 20)
                    .opacity(isShowingNotification ? 1 : 0)
            } // ZStack
        } // GeometryReader
    } // body
}
