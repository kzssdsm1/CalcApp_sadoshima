//
//  TemperatureData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation

struct TemperatureData {
    static let temperatures = [degreeCelsius, degreeFahrenheit, kelvin, degreeRankine]
    
    // 摂氏
    static let degreeCelsius = Unit(label: "摂氏(°C)", conversions: TemperatureConversions.fromDegreeCelsius, unit: "°C")
    
    // 華氏
    static let degreeFahrenheit = Unit(label: "華氏(°F)", conversions: TemperatureConversions.fromDegreeFahrenheit, unit: "°F")
    
    // ケルビン
    static let kelvin = Unit(label: "ケルビン(K)", conversions: TemperatureConversions.fromKelvin, unit: "K")
    
    // ランキン度
    static let degreeRankine = Unit(label: "ランキン度(°R)", conversions: TemperatureConversions.fromDegreeRankine, unit: "°R")
}
