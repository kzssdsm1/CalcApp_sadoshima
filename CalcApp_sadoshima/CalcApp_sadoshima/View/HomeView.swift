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
    
    @State private var selection: Selection = .Calculator
    @State private var isShowingNotification = false
    @State private var isShowingSheet = false
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    private enum Selection {
        case Calculator
        case UnitConverter
    }
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top) {
                VStack(alignment: .trailing, spacing: 0) {
                    VStack {
                        Spacer(minLength: 0)
                        
                        HStack {
                            Spacer(minLength: 0)
                            
                            Text(viewModel.prevNum)
                                .font(.system(size: proxy.size.width * 0.07, weight: .medium))
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
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: proxy.size.width * 0.025)
                                        .foregroundColor(.offWhite)
                                        .padding()
                                        .background(
                                            RoundedRectangle(cornerRadius: 12)
                                                .foregroundColor(.darkGreen)
                                                .frame(height: screenHeight * 0.035)
                                        )
                                })
                            } // HStack
                        }
                        
                        HStack {
                            Spacer(minLength: 0)
                            
                            Text(viewModel.displayingNum)
                                .font(.system(size: viewModel.fontSize, weight: .medium))
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
                                    .font(.system(size: proxy.size.width * 0.06, weight: .medium))
                                    .foregroundColor(.offWhite)
                            }
                        } // HStack
                    } // VStack
                    .padding(.horizontal)
                    .frame(height: proxy.size.height * 0.28)
                    
                    ZStack(alignment: .bottom) {
                        CalcKeyboardView(viewModel: viewModel)
                            .opacity(selection == .Calculator ? 1 : 0)
                            .offset(x: selection == .Calculator ? 0 : -500)
                        
                        UnitSelectView(viewModel: viewModel)
                            .opacity(selection == .UnitConverter ? 1 : 0)
                            .offset(x: selection == .UnitConverter ? 0 : -500)
                    } // ZStack
                    
                    HStack {
                        Spacer(minLength: 0)
                        
                        VStack {
                            Image(systemName: "plus.slash.minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: proxy.size.width * 0.06)
                                .foregroundColor(.offWhite)
                            
                            Text("計算機")
                                .font(.system(size: proxy.size.width * 0.035, weight: .medium))
                                .foregroundColor(.offWhite)
                        } // VStack
                        .onTapGesture {
                            withAnimation(.linear(duration: 0.2)) {
                                selection = .Calculator
                                viewModel.unit = ""
                                viewModel.setFontSize()
                                viewModel.isShowingPrevNum = false
                            } // withAnimation
                        }
                        .opacity(selection == .Calculator ? 1 : 0.7)
                        .padding(.horizontal)
                        
                        Spacer(minLength: 0)
                        
                        VStack {
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: proxy.size.width * 0.06)
                                .foregroundColor(.offWhite)
                            
                            Text("単位換算機")
                                .font(.system(size: proxy.size.width * 0.035, weight: .medium))
                                .foregroundColor(.offWhite)
                        } // VStack
                        .onTapGesture {
                            withAnimation(.linear(duration: 0.2)) {
                                selection = .UnitConverter
                                viewModel.unit = ""
                                viewModel.isShowingPrevNum = true
                            } // withAnimation
                        }
                        .opacity(selection == .UnitConverter ? 1 : 0.7)
                        .padding(.horizontal)
                        
                        Spacer(minLength: 0)
                    } // HStack
                    .padding()
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
