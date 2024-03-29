//
//  DetailNumberView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/05/13.
//

import SwiftUI
import MobileCoreServices

struct DetailNumberView: View {
    @StateObject private var viewModel = DetailNumberViewModel()
    
    @State private var isShowingNotification = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .bottom) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text(String("\(viewModel.detailNumber ?? 0)"))
                                .font(.system(size: proxy.size.width * 0.09, weight: .medium))
                                .foregroundColor(.offWhite)
                                .onTapGesture {
                                    copyToPasteboard()
                                }
                            
                            Spacer(minLength: 0)
                        } // HStack
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
    
    private func copyToPasteboard() {
        UIPasteboard.general.setValue("\(viewModel.detailNumber ?? 0)", forPasteboardType: kUTTypePlainText as String)
        isShowingNotification = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            withAnimation {
                isShowingNotification = false
            }
        }
    }
}
