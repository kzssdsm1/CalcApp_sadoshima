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
    @Binding var displayingUnit: String
    @Binding var selection: Selection
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                Spacer(minLength: 0)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Text(viewModel.previousNumber)
                        .font(.system(size: proxy.size.width * 0.07, weight: .medium))
                        .foregroundColor(.offWhite)
                        .opacity(selection == .UnitConverter ? 0.6 : 0)
                } // HStack
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Text(viewModel.displayingNumber)
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(.offWhite)
                        .onTapGesture {
                            copyToPasteboard()
                        } // onTapGesture
                    
                    if displayingUnit != "" {
                        Text(displayingUnit)
                            .font(.system(size: proxy.size.width * 0.06, weight: .medium))
                            .foregroundColor(.offWhite)
                    }
                } // HStack
            } // VStack
        } // GeometryReader
    } // body
    
    private func copyToPasteboard() {
        UIPasteboard.general.setValue(viewModel.displayingNumber + displayingUnit, forPasteboardType: kUTTypePlainText as String)
        isShowingNotification = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            withAnimation {
                isShowingNotification = false
            }
        }
    }
}
