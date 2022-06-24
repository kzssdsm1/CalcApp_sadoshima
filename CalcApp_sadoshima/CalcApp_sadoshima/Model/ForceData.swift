//
//  ForceData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation

struct ForceData {
    static let forces = [kilogramForce, newton, dyne, poundForce, tonneForce, poundal]
    
    // 重量キログラム
    static let kilogramForce = Unit(label: "重量キログラム(kgf)", conversions: ForceConversions.fromKilogramForce, unit: "kgf")
    
    // ニュートン
    static let newton = Unit(label: "ニュートン(N)", conversions: ForceConversions.fromNewton, unit: "N")
    
    // ダイン
    static let dyne = Unit(label: "ダイン(dyn)", conversions: ForceConversions.fromDyne, unit: "dyn")
    
    // 重量ポンド
    static let poundForce = Unit(label: "重量ポンド(lbf)", conversions: ForceConversions.fromPoundForce, unit: "lbf")
    
    // 重量トン
    static let tonneForce = Unit(label: "重量トン(tnf)", conversions: ForceConversions.fromTonneForce, unit: "tnf")
    
    // パウンダル
    static let poundal = Unit(label: "パウンダル(pdl)", conversions: ForceConversions.fromPoundal, unit: "pdl")
}
