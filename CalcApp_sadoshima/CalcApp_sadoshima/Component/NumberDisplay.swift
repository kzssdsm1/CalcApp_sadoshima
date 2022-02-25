//
//  NumberDisplay.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/25.
//

import SwiftUI
import MobileCoreServices

struct NumberDisplay: View {
    @Binding var isShowingSheet: Bool
    @Binding var isShowingNotification: Bool
    
    @StateObject var viewModel: HomeViewModel
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer(minLength: 0)
            
            HStack {
                Spacer(minLength: 0)
                
                Text(viewModel.prevNum)
                    .font(.system(size: 50))
                    .minimumScaleFactor(0.4)
                    .lineLimit(1)
                    .foregroundColor(.offWhite)
                    .opacity(viewModel.isShowingPrevNum ? 0.6 : 0)
            } // HStack
            
            if viewModel.displayingNum != "Underflow" && viewModel.displayingNum.contains("e") {
                HStack {
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        isShowingSheet = true
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(0.7, contentMode: .fit)
                            .foregroundColor(.offWhite)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(.darkGreen)
                            )
                    })
                } // HStack
            }
            
            HStack {
                Spacer(minLength: 0)
                
                Text(viewModel.displayingNum)
                    .font(.system(size: 70))
                    .minimumScaleFactor(0.4)
                    .lineLimit(1)
                    .foregroundColor(.offWhite)
                    .onTapGesture {
                        UIPasteboard.general.setValue(viewModel.displayingNum + viewModel.unit, forPasteboardType: kUTTypePlainText as String)
                        isShowingNotification = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                            withAnimation {
                                isShowingNotification = false
                            }
                        }
                    }
                
                if viewModel.unit != "" {
                    Text(viewModel.unit)
                        .foregroundColor(.offWhite)
                }
            } // HStack
        } // VStack
        .padding(.trailing, 10)
        .frame(height: screenHeight * 0.28)
    } // body
}
