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
    static let femtoMetre = Unit(label: "フェムトメートル(fm)", conversions: LengthConversions.fromFemtometre, unit: "fm")
    
    // ピコメートル
    static let picoMetre = Unit(label: "ピコメートル(pm)", conversions: LengthConversions.fromPicometre, unit: "pm")
    
    // ナノメートル
    static let nanoMetre = Unit(label: "ナノメートル(nm)", conversions: LengthConversions.fromNanometre, unit: "nm")
    
    // マイクロメートル
    static let microMetre = Unit(label: "マイクロメートル(μm)", conversions: LengthConversions.fromMicrometre, unit: "μm")
    
    // ミリメートル
    static let milliMetre = Unit(label: "ミリメートル(mm)", conversions: LengthConversions.fromMillimetre, unit: "mm")
    
    // センチメートル
    static let centiMetre = Unit(label: "センチメートル(cm)", conversions: LengthConversions.fromCentimetre, unit: "cm")
    
    // メートル
    static let metre = Unit(label: "メートル(m)", conversions: LengthConversions.fromMetre, unit: "m")
    
    // キロメートル
    static let kiloMetre = Unit(label: "キロメートル(km)", conversions: LengthConversions.fromKilometre, unit: "km")
    
    // ヤード
    static let yard = Unit(label: "ヤード(yd)", conversions: LengthConversions.fromYard, unit: "yd")
    
    // フィート
    static let feet = Unit(label: "フィート(ft)", conversions: LengthConversions.fromFeet, unit: "ft")
    
    // インチ
    static let inch = Unit(label: "インチ(in)", conversions: LengthConversions.fromInch, unit: "in")
    
    // マイル
    static let mile = Unit(label: "マイル(mi)", conversions: LengthConversions.fromMile, unit: "mi")
    
    // 尺
    static let syaku = Unit(label: "尺", conversions: LengthConversions.fromSyaku, unit: "尺")
    
    // 鯨尺
    static let kujirajaku = Unit(label: "鯨尺", conversions: LengthConversions.fromKujirajaku, unit: "鯨尺")
    
    // 寸
    static let sun = Unit(label: "寸", conversions: LengthConversions.fromSun, unit: "寸")
    
    // 間
    static let ken = Unit(label: "間", conversions: LengthConversions.fromKen, unit: "間")
    
    // 丈
    static let jou = Unit(label: "丈", conversions: LengthConversions.fromJou, unit: "丈")
    
    // 町
    static let chou = Unit(label: "町", conversions: LengthConversions.fromChou, unit: "町")
    
    // 里
    static let ri = Unit(label: "里", conversions: LengthConversions.fromRi, unit: "里")
    
    // 天文単位
    static let tenmontani = Unit(label: "天文単位(AU)", conversions: LengthConversions.fromTenmontani, unit: "AU")
    
    // 光年
    static let kounen = Unit(label: "光年", conversions: LengthConversions.fromKounen, unit: "光年")
    
    // パーセク
    static let parsec = Unit(label: "パーセク(pc)", conversions: LengthConversions.fromParsec, unit: "pc")
    
    // 海里
    static let kairi = Unit(label: "海里", conversions: LengthConversions.fromKairi, unit: "海里")
    
    // ファゾム
    static let fathom = Unit(label: "ファゾム(fath)", conversions: LengthConversions.fromFathom, unit: "fath")
    
    // ポイント
    static let point = Unit(label: "ポイント(pt)", conversions: LengthConversions.fromPoint, unit: "pt")
    
    // オングストローム
    static let angstrom = Unit(label: "オングストローム(Å)", conversions: LengthConversions.fromAngstrom, unit: "Å")
}
