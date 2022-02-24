//
//  DetailNumView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/23.
//

import SwiftUI
import MobileCoreServices

struct DetailNumView: View {
    @StateObject var viewModel: HomeViewModel
    
    @State private var isShowingNotification = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .bottom) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        Text(NSDecimalNumber(decimal: viewModel.firstArgument!).stringValue)
                            .font(.system(size: proxy.size.width * 0.09, weight: .medium))
                            .foregroundColor(.offWhite)
                            .onTapGesture {
                                UIPasteboard.general.setValue(NSDecimalNumber(decimal: viewModel.firstArgument!).stringValue, forPasteboardType: kUTTypePlainText as String)
                                isShowingNotification = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                                    withAnimation {
                                        isShowingNotification = false
                                    }
                                }
                            }
                    } // VStack
                } // ScrollView
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.aozumi.edgesIgnoringSafeArea(.all))
                
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 120, height: 45)
                    .foregroundColor(.offWhite)
                    .overlay(
                        Text("コピーしました")
                            .font(.system(size: 14))
                            .foregroundColor(.smalt)
                    )
                    .offset(y: -50)
                    .opacity(isShowingNotification ? 1 : 0)
            } // ZStack
        } // GeometryReader
    } // body
}
