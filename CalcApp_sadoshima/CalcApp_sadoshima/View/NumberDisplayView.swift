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
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone ? proxy.size.height * 0.14 : proxy.size.height * 0.15, weight: .medium))
                        .foregroundColor(.offWhite)
                        .minimumScaleFactor(0.35)
                        .lineLimit(1)
                        .opacity(selection == .UnitConverter ? 0.6 : 0)
                } // HStack
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Text(viewModel.displayingNumber)
                        .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone ? proxy.size.height * 0.18 : proxy.size.height * 0.19, weight: .medium))
                        .foregroundColor(.offWhite)
                        .minimumScaleFactor(0.35)
                        .lineLimit(1)
                        .padding(.leading)
                        .onTapGesture {
                            copyToPasteboard()
                        } // onTapGesture
                    
                    if selection == .UnitConverter && viewModel.currentUnit != "" {
                        Text(viewModel.currentUnit)
                            .font(.system(size: UIDevice.current.userInterfaceIdiom == .phone ? proxy.size.height * 0.11 : proxy.size.height * 0.13, weight: .medium))
                            .foregroundColor(.offWhite)
                            .onDisappear() {
                                viewModel.previousNumber = ""
                            }
                    }
                } // HStack
            } // VStack
            .padding(.vertical, 10)
            .padding(.horizontal, UIDevice.current.userInterfaceIdiom == .phone ? 10 : 20)
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
