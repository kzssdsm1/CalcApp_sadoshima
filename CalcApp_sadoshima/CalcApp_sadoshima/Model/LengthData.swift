//
//  LengthData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/04.
//

import Foundation
import SwiftUI

struct LengthData {
    static let lengths = [femtoMetre, picoMetre, nanoMetre, microMetre, milliMetre, centiMetre, metre, kiloMetre, yard, feet, inch, mile, syaku, kujirajaku, sun, ken, jou, chou, ri, tenmontani, kounen, parsec, kairi, fathom, point, angstrom]
    
    // フェムトメートル
    static let femtoMetre = Unit(label: "フェムトメートル(fm)", conversions: LengthConversions.fromFemtometre)
    
    // ピコメートル
    static let picoMetre = Unit(label: "ピコメートル(pm)", conversions: LengthConversions.fromPicometre)
    
    // ナノメートル
    static let nanoMetre = Unit(label: "ナノメートル(nm)", conversions: LengthConversions.fromNanometre)
    
    // マイクロメートル
    static let microMetre = Unit(label: "マイクロメートル(μm)", conversions: LengthConversions.fromMicrometre)
    
    // ミリメートル
    static let milliMetre = Unit(label: "ミリメートル(mm)", conversions: LengthConversions.fromMillimetre)
    
    // センチメートル
    static let centiMetre = Unit(label: "センチメートル(cm)", conversions: LengthConversions.fromCentimetre)
    
    // メートル
    static let metre = Unit(label: "メートル(m)", conversions: LengthConversions.fromMetre)
    
    // キロメートル
    static let kiloMetre = Unit(label: "キロメートル(km)", conversions: LengthConversions.fromKilometre)
    
    // ヤード
    static let yard = Unit(label: "ヤード(yd)", conversions: LengthConversions.fromYard)
    
    // フィート
    static let feet = Unit(label: "フィート(ft)", conversions: LengthConversions.fromFeet)
    
    // インチ
    static let inch = Unit(label: "インチ(in)", conversions: LengthConversions.fromInch)
    
    // マイル
    static let mile = Unit(label: "マイル(mi)", conversions: LengthConversions.fromMile)
    
    // 尺
    static let syaku = Unit(label: "尺", conversions: LengthConversions.fromSyaku)
    
    // 鯨尺
    static let kujirajaku = Unit(label: "鯨尺", conversions: LengthConversions.fromKujirajaku)
    
    // 寸
    static let sun = Unit(label: "寸", conversions: LengthConversions.fromSun)
    
    // 間
    static let ken = Unit(label: "間", conversions: LengthConversions.fromKen)
    
    // 丈
    static let jou = Unit(label: "丈", conversions: LengthConversions.fromJou)
    
    // 町
    static let chou = Unit(label: "町", conversions: LengthConversions.fromChou)
    
    // 里
    static let ri = Unit(label: "里", conversions: LengthConversions.fromRi)
    
    // 天文単位
    static let tenmontani = Unit(label: "天文単位(AU)", conversions: LengthConversions.fromTenmontani)
    
    // 光年
    static let kounen = Unit(label: "光年", conversions: LengthConversions.fromKounen)
    
    // パーセク
    static let parsec = Unit(label: "パーセク(pc)", conversions: LengthConversions.fromParsec)
    
    // 海里
    static let kairi = Unit(label: "海里", conversions: LengthConversions.fromKairi)
    
    // ファゾム
    static let fathom = Unit(label: "ファゾム(fath)", conversions: LengthConversions.fromFathom)
    
    // ポイント
    static let point = Unit(label: "ポイント(pt)", conversions: LengthConversions.fromPoint)
    
    // オングストローム
    static let angstrom = Unit(label: "オングストローム(Å)", conversions: LengthConversions.fromAngstrom)
}
