//
//  AreaData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/07.
//

import Foundation
import SwiftUI

struct AreaData {
    static let areas = [squareMillimetre, squareCentimetre, squareMetre, are, hectare, squareKilometre, squareInch, squareFeet, squareYard, squareChain, acre, rood, squareMillimetre, tsubo, se, tan, chou]
    
    // 平方ミリメートル
    static let squareMillimetre = Unit(label: "平方ミリメートル(mm2)", conversions: AreaConversions.fromSquareMillimetre)
    
    // 平方センチメートル
    static let squareCentimetre = Unit(label: "平方センチメートル(cm2)", conversions: AreaConversions.fromSquareCentimetre)
    
    // 平方メートル
    static let squareMetre = Unit(label: "平方メートル(m2)", conversions: AreaConversions.fromSquareMetre)
    
    // アール
    static let are = Unit(label: "アール(a)", conversions: AreaConversions.fromAre)
    
    // ヘクタール
    static let hectare = Unit(label: "ヘクタール(ha)", conversions: AreaConversions.fromHectare)
    
    // 平方キロメートル
    static let squareKilometre = Unit(label: "平方キロメートル(km2)", conversions: AreaConversions.fromSquareKilometre)
    
    // 平方インチ
    static let squareInch = Unit(label: "平方インチ(sq in)", conversions: AreaConversions.fromSquareInch)
    
    // 平方フィート
    static let squareFeet = Unit(label: "平方フィート(sq ft)", conversions: AreaConversions.fromSquareFeet)
    
    // 平方ヤード
    static let squareYard = Unit(label: "平方ヤード(sq yd)", conversions: AreaConversions.fromSquareYard)
    
    // 平方チェーン
    static let squareChain = Unit(label: "平方チェーン(sq ch)", conversions: AreaConversions.fromSquareChain)
    
    // エーカー
    static let acre = Unit(label: "エーカー(ac)", conversions: AreaConversions.fromAcre)
    
    // ルード
    static let rood = Unit(label: "ルード(ro)", conversions: AreaConversions.fromRood)
    
    // 平方マイル
    static let squareMile = Unit(label: "平方マイル(sq mi)", conversions: AreaConversions.fromSquareMile)
    
    // 坪
    static let tsubo = Unit(label: "坪", conversions: AreaConversions.fromTsubo)
    
    // 畝
    static let se = Unit(label: "畝", conversions: AreaConversions.fromSe)
    
    // 反
    static let tan = Unit(label: "反", conversions: AreaConversions.fromTan)
    
    // 町
    static let chou = Unit(label: "町", conversions: AreaConversions.fromChou)
}
