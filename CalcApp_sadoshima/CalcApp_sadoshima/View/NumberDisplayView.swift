//
//  NumberDisplayView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/04/15.
//

import SwiftUI
import MobileCoreServices

struct NumberDisplayView: View {
    @StateObject private var viewModel = NumberDisplayViewModel()
    
    @Binding var isShowingSheet: Bool
    @Binding var isShowingNotification: Bool
    @Binding var selection: Selection
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                Spacer(minLength: 0)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Text(viewModel.previousNumber)
                        .font(.system(size: proxy.size.height * 0.1, weight: .medium))
                        .foregroundColor(.offWhite)
                        .opacity(selection == .UnitConverter ? 0.6 : 0)
                } // HStack
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Text(viewModel.displayingNumber)
                        .font(.system(size: proxy.size.height * 0.14, weight: .medium))
                        .foregroundColor(.offWhite)
                        .onTapGesture {
                            copyToPasteboard()
                        } // onTapGesture
                    
                    if selection == .UnitConverter && viewModel.currentUnit != "" {
                        Text(viewModel.currentUnit)
                            .font(.system(size: proxy.size.width * 0.06, weight: .medium))
                            .foregroundColor(.offWhite)
                            .onAppear {
                                viewModel.previousNumber = ""
                                viewModel.currentUnit = ""
                            }
                            .onDisappear() {
                                viewModel.previousNumber = ""
                                viewModel.currentUnit = ""
                            }
                    }
                } // HStack
            } // VStack
            .padding(10)
        } // GeometryReader
        .frame(height: screenHeight * 0.3)
    } // body
    
    private func copyToPasteboard() {
        UIPasteboard.general.setValue(viewModel.displayingNumber + viewModel.currentUnit, forPasteboardType: kUTTypePlainText as String)
        isShowingNotification = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            withAnimation {
                isShowingNotification = false
            }
        }
    }
}
