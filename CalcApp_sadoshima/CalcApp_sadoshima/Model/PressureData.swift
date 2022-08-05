//
//  PressureData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation

struct PressureData {
    static let pressures = [pascal, hectopascal, kilopascal, megapascal, bar, standardAtmosphere, technicalAtmosphere, millimetersOfWaterColumn, centimetersOfWaterColumn, metersOfWaterColumn, inchesOfWaterColumn, footOfWaterColumn, millimetersOfMercuryColumn, inchesOfMercuryColumn, torr, poundForcePerSquareInch]
    
    // パスカル
    static let pascal = Unit(label: "パスカル(Pa)", conversions: PressureConversions.fromPascal, unit: "Pa")
    
    // ヘクトパスカル
    static let hectopascal = Unit(label: "ヘクトパスカル(hPa)", conversions: PressureConversions.fromHectopascal, unit: "hPa")
    
    // キロパスカル
    static let kilopascal = Unit(label: "キロパスカル(kPa)", conversions: PressureConversions.fromKilopascal, unit: "kPa")
    
    // メガパスカル
    static let megapascal = Unit(label: "メガパスカル(MPa)", conversions: PressureConversions.fromMegapascal, unit: "MPa")
    
    // バール
    static let bar = Unit(label: "バール(bar)", conversions: PressureConversions.fromBar, unit: "bar")
    
    // 標準大気圧
    static let standardAtmosphere = Unit(label: "標準大気圧(atm)", conversions: PressureConversions.fromStandardAtmosphere, unit: "atm")
    
    // 工学気圧
    static let technicalAtmosphere = Unit(label: "工学気圧(at)", conversions: PressureConversions.fromTechnicalAtmosphere, unit: "at")
    
    // 水柱ミリメートル
    static let millimetersOfWaterColumn = Unit(label: "水柱ミリメートル(mmH2O)", conversions: PressureConversions.fromMillimetersOfWaterColumn, unit: "mmH2O")
    
    // 水柱センチメートル
    static let centimetersOfWaterColumn = Unit(label: "水柱センチミリメートル(cmH2O)", conversions: PressureConversions.fromCentimetersOfWaterColumn, unit: "cmH2O")
    
    // 水柱メートル
    static let metersOfWaterColumn = Unit(label: "水柱メートル(mH2O)", conversions: PressureConversions.fromMetersOfWaterColumn, unit: "mH2O")
    
    // 水柱インチ
    static let inchesOfWaterColumn = Unit(label: "水柱インチ(inH2O)", conversions: PressureConversions.fromInchesOfWaterColumn, unit: "inH2O")
    
    // 水柱フィート
    static let footOfWaterColumn = Unit(label: "水柱フィート(ftH2O)", conversions: PressureConversions.fromFootOfWaterColumn, unit: "ftH2O")
    
    // 水銀柱ミリメートル
    static let millimetersOfMercuryColumn = Unit(label: "水銀柱ミリメートル(mmHg)", conversions: PressureConversions.fromMillimetersOfMercuryColumn, unit: "mmHg")
    
    // 水銀柱インチ
    static let inchesOfMercuryColumn = Unit(label: "水銀柱インチ(inHg)", conversions: PressureConversions.fromInchesOfMercuryColumn, unit: "inHg")
    
    // トル
    static let torr = Unit(label: "トル(Torr)", conversions: PressureConversions.fromTorr, unit: "Torr")
    
    // 重量ポンド毎平方インチ
    static let poundForcePerSquareInch = Unit(label: "重量ポンド毎平方インチ(psi)", conversions: PressureConversions.fromPoundForcePerSquareInch, unit: "psi")
}
