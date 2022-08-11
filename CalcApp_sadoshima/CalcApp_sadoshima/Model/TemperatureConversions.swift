//
//  TemperatureConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation
import SwiftUI

struct TemperatureConversions {
    // 摂氏
    static let fromDegreeCelsius = [
        Conversion(label: "華氏(°F)", value: "33.8", buttonColor: Color.smalt, unit: "°F"),
        Conversion(label: "ケルビン(K)", value: "274.15", buttonColor: Color.konruri, unit: "K"),
        Conversion(label: "ランキン度(°R)", value: "493.47", buttonColor: Color.lightnessGreen, unit: "°R")
    ]
    
    // 華氏
    static let fromDegreeFahrenheit = [
        Conversion(label: "摂氏(°C)", value: "-17.2222222222", buttonColor: Color.asahanada, unit: "°C"),
        Conversion(label: "ケルビン(K)", value: "255.9277777778", buttonColor: Color.konruri, unit: "K"),
        Conversion(label: "ランキン度(°R)", value: "460.67", buttonColor: Color.lightnessGreen, unit: "°R")
    ]
    
    // ケルビン
    static let fromKelvin = [
        Conversion(label: "摂氏(°C)", value: "-272.15", buttonColor: Color.asahanada, unit: "°C"),
        Conversion(label: "華氏(°F)", value: "-457.87", buttonColor: Color.smalt, unit: "°F"),
        Conversion(label: "ランキン度(°R)", value: "1.8", buttonColor: Color.lightnessGreen, unit: "°R")
    ]
    
    // ランキン度
    static let fromDegreeRankine = [
        Conversion(label: "摂氏(°C)", value: "-272.5944444444", buttonColor: Color.asahanada, unit: "°C"),
        Conversion(label: "華氏(°F)", value: "-458.67", buttonColor: Color.smalt, unit: "°F"),
        Conversion(label: "ケルビン(K)", value: "0.5555555556", buttonColor: Color.konruri, unit: "K")
    ]
}
