//
//  MilligramKeyboardView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/18.
//

import SwiftUI

struct MilligramKeyboardView: View {
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    private enum fromMilligram: CaseIterable {
        case toGram
        case toKilogram
        case toTon
        case toGrain
        case toDram
        case toOunce
        case toPound
        case toStone
        case toShortTon
        case toLongTon
        case toFun
        case toMonme
        case toHyakume
        case toKin
        case toKan
        
        var buttonLabel: String {
            switch self {
            case .toGram: return "グラム"
            case .toKilogram: return "キログラム"
            case .toTon: return "トン"
            case .toGrain: return "グレーン"
            case .toDram: return "ドラム"
            case .toOunce: return "オンス"
            case .toPound: return "ポンド"
            case .toStone: return "ストーン"
            case .toShortTon: return "ショートトン"
            case .toLongTon: return "ロングトン"
            case .toFun: return "分"
            case .toMonme: return "匁"
            case .toHyakume: return "百目"
            case .toKin: return "斤"
            case .toKan: return "貫"
            }
        }
        
        var reduceValue: String {
            switch self {
            case .toGram: return "0.001"
            case .toKilogram: return "1e-6"
            case .toTon: return "1e-9"
            case .toGrain: return "0.015432358352941"
            case .toDram: return "5.6438339119329e-4"
            case .toOunce: return "3.527396194958e-5"
            case .toPound: return "2.2046226218488e-6"
            case .toStone: return "1.5747304441777e-7"
            case .toShortTon: return "9.8420652761106e-10"
            case .toLongTon: return "1.1023113109244e-9"
            case .toFun: return "0.0026666666666667"
            case .toMonme: return "2.6666666666667e-4"
            case .toHyakume: return "2.6666666666667e-6"
            case .toKin: return "1.6666666666667e-6"
            case .toKan: return "2.6666666666667e-7"
            }
        }
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                LazyVGrid(columns: columns) {
                    ForEach(fromMilligram.allCases, id: \.self) { item in
                        Button(action: {
                            print("test")
                        }, label: {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.violet)
                                .frame(width: proxy.size.width * 0.26, height: proxy.size.height * 0.15)
                                .overlay(
                                    Text(item.buttonLabel)
                                        .font(.system(size: proxy.size.width * 0.04, weight: .medium))
                                        .foregroundColor(.white)
                                )
                        })
                            .padding()
                    } // ForEach
                } // LazyVGrid
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.bungy.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    } // body
}
