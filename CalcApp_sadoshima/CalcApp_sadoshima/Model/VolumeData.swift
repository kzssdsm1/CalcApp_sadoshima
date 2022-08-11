//
//  VolumeData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/06/24.
//

import Foundation

struct VolumeData {
    static let volumes = [milliLitre, centiLitre, deciLitre, litre, kosaji, osaji, cubicMillimetre, cubicMetre, cubicInch, cubicFeet, acreFeet, imperialGallon, usLiquidGallon, usDryGallon, imperialBushell, usBushell, imperialFluidOunce, usFluidOunce, imperialGill, usGill, imperialPint, usLiquidPint, usDryPint, imperialQuart, usLiquidQuart, usDryQuart, imperialBarrel, usLiquidBarrel, usDryBarrel, shaku, go, sho, to, koku]
    
    // ミリリットル
    static let milliLitre = Unit(label: "ミリリットル(ml)", conversions: VolumeConversions.fromMilliLitre, unit: "ml")
    
    // センチリットル
    static let centiLitre = Unit(label: "センチリットル(cl)", conversions: VolumeConversions.fromCentiLitre, unit: "cl")
    
    // デシリットル
    static let deciLitre = Unit(label: "デシリットル(dl)", conversions: VolumeConversions.fromDeciLitre, unit: "dl")
    
    // リットル
    static let litre = Unit(label: "リットル(l)", conversions: VolumeConversions.fromLitre, unit: "l")
    
    // 小さじ
    static let kosaji = Unit(label: "小さじ(杯)", conversions: VolumeConversions.fromKosaji, unit: "杯")
    
    // 大さじ
    static let osaji = Unit(label: "大さじ(杯)", conversions: VolumeConversions.fromOsaji, unit: "杯")
    
    // 立方ミリメートル
    static let cubicMillimetre = Unit(label: "立方ミリメートル(mm3)", conversions: VolumeConversions.fromCubicMillimetre, unit: "mm3")
    
    // 立方メートル
    static let cubicMetre = Unit(label: "立方メートル(m3)", conversions: VolumeConversions.fromCubicMetre, unit: "m3")
    
    // 立方インチ
    static let cubicInch = Unit(label: "立方インチ(cu in)", conversions: VolumeConversions.fromCubicInch, unit: "cu in")
    
    // 立方フィート
    static let cubicFeet = Unit(label: "立方フィート(cu ft)", conversions: VolumeConversions.fromCubicFeet, unit: "cu ft")
    
    // エーカー・フィート
    static let acreFeet = Unit(label: "エーカー・フィート(ac ft)", conversions: VolumeConversions.fromAcreFeet, unit: "ac ft")
    
    // 英ガロン
    static let imperialGallon = Unit(label: "英ガロン(gal)", conversions: VolumeConversions.fromImperialGallon, unit: "gal")
    
    // 米液量ガロン
    static let usLiquidGallon = Unit(label: "米液量ガロン(gal)", conversions: VolumeConversions.fromUSLiquidGallon, unit: "gal")
    
    // 米乾量ガロン
    static let usDryGallon = Unit(label: "米乾量ガロン(gal)", conversions: VolumeConversions.fromUSDryGallon, unit: "gal")
    
    // 英ブッシェル
    static let imperialBushell = Unit(label: "英ブッシェル(bu)", conversions: VolumeConversions.fromImperialBushel, unit: "bu")
    
    // 米ブッシェル
    static let usBushell = Unit(label: "米ブッシェル(bu)", conversions: VolumeConversions.fromUSBushel, unit: "bu")
    
    // 英液量オンス
    static let imperialFluidOunce = Unit(label: "英液量オンス(fl oz)", conversions: VolumeConversions.fromImperialFluidOunce, unit: "fl oz")
    
    // 米液量オンス
    static let usFluidOunce = Unit(label: "米液量オンス(fl oz)", conversions: VolumeConversions.fromUSFluidOunce, unit: "fl oz")
    
    // 英ジル
    static let imperialGill = Unit(label: "英ジル(gi)", conversions: VolumeConversions.fromImperialGill, unit: "gi")
    
    // 米ジル
    static let usGill = Unit(label: "米ジル(gi)", conversions: VolumeConversions.fromUSGill, unit: "gi")
    
    // 英パイント
    static let imperialPint = Unit(label: "英パイント(pt)", conversions: VolumeConversions.fromImperialPint, unit: "pt")
    
    // 米液量パイント
    static let usLiquidPint = Unit(label: "米液量パイント(pt)", conversions: VolumeConversions.fromUSLiquidPint, unit: "pt")
    
    // 米乾量パイント
    static let usDryPint = Unit(label: "米乾量パイント(pt)", conversions: VolumeConversions.fromUSDryPint, unit: "pt")
    
    // 英クォート
    static let imperialQuart = Unit(label: "英クォート(qt)", conversions: VolumeConversions.fromImperialQuart, unit: "qt")
    
    // 米液量クォート
    static let usLiquidQuart = Unit(label: "米液量クォート(qt)", conversions: VolumeConversions.fromUSLiquidQuart, unit: "qt")
    
    // 米乾量クォート
    static let usDryQuart = Unit(label: "米乾量クォート(qt)", conversions: VolumeConversions.fromUSDryQuart, unit: "qt")
    
    // 英バレル
    static let imperialBarrel = Unit(label: "英バレル(bbl)", conversions: VolumeConversions.fromImperialBarrel, unit: "bbl")
    
    // 米液量バレル
    static let usLiquidBarrel = Unit(label: "米液量バレル(bbl)", conversions: VolumeConversions.fromUSLiquidBarrel, unit: "bbl")
    
    // 米乾量バレル
    static let usDryBarrel = Unit(label: "米乾量バレル(bbl)", conversions: VolumeConversions.fromUSDryBarrel, unit: "bbl")
    
    // 勺
    static let shaku = Unit(label: "勺", conversions: VolumeConversions.fromShaku, unit: "勺")
    
    // 合
    static let go = Unit(label: "合", conversions: VolumeConversions.fromGo, unit: "合")
    
    // 升
    static let sho = Unit(label: "升", conversions: VolumeConversions.fromSho, unit: "升")
    
    // 斗
    static let to = Unit(label: "斗", conversions: VolumeConversions.fromTo, unit: "斗")
    
    // 石
    static let koku = Unit(label: "石", conversions: VolumeConversions.fromKoku, unit: "石")
}
