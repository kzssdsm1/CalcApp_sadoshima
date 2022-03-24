//
//  HomeView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import SwiftUI
import MobileCoreServices

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var isShowingNotification = false
    @State private var isShowingSheet = false
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top) {
                VStack(alignment: .trailing, spacing: 0) {
                    
                    VStack {
                        Spacer(minLength: 0)

                        HStack {
                            Spacer(minLength: 0)

                            Text(viewModel.previousNumber)
                                .font(.system(size: proxy.size.width * 0.07, weight: .medium))
                                .foregroundColor(.offWhite)
                                .opacity(viewModel.isShowingPrevNum ? 0.6 : 0)
                        } // HStack

                        if viewModel.displayingNumber != "Underflow" && viewModel.displayingNumber.contains("e") {
                            HStack {
                                Spacer(minLength: 0)

                                Button(action: {
                                    isShowingSheet = true
                                }, label: {
                                    Image(systemName: "magnifyingglass")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        //.frame(width: proxy.size.width * 0.035)
                                        .frame(width: proxy.size.width * 0.035, height: proxy.size.width * 0.035)
                                        //.minimumScaleFactor(0.35)
                                        .foregroundColor(.offWhite)
                                        .padding(10)
                                        .background(
                                            RoundedRectangle(cornerRadius: 12)
                                                .foregroundColor(.darkGreen)
                                                //.frame(height: screenHeight * 0.04)
                                        )
                                })
                            } // HStack
                        }

                        HStack {
                            Spacer(minLength: 0)

                            Text(viewModel.displayingNumber)
                                .font(.system(size: viewModel.fontSize, weight: .medium))
                                .foregroundColor(.offWhite)
                                .onTapGesture {
                                    UIPasteboard.general.setValue(viewModel.displayingNumber + viewModel.displayUnit, forPasteboardType: kUTTypePlainText as String)
                                    isShowingNotification = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                                        withAnimation {
                                            isShowingNotification = false
                                        }
                                    }
                                }

                            if viewModel.displayUnit != "" {
                                Text(viewModel.displayUnit)
                                    .font(.system(size: proxy.size.width * 0.06, weight: .medium))
                                    .foregroundColor(.offWhite)
                            }
                        } // HStack
                    } // VStack
                    .padding(.horizontal)
                    .padding(.bottom, proxy.size.height * 0.02)
                    .frame(height: proxy.size.height * 0.28)
                    
                    ZStack(alignment: .bottom) {
                        TestView(viewModel: viewModel)
                            .opacity(viewModel.selection == .Calculator ? 1 : 0)
                            .offset(x: viewModel.selection == .Calculator ? 0 : -500)
                        
                        UnitSelectView(viewModel: viewModel)
                            .opacity(viewModel.selection == .UnitConverter ? 1 : 0)
                            .offset(x: viewModel.selection == .UnitConverter ? 0 : -500)
                    } // ZStack
                    
                    CustomTabBar(viewModel: viewModel)
                } // VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .background(Color.aozumi.edgesIgnoringSafeArea(.all))
                .sheet(isPresented: $isShowingSheet) {
                    DetailNumView(viewModel: viewModel)
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
