//
//  ForceConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation
import SwiftUI

struct ForceConversions {
    // 重量キログラム
    static let fromKilogramForce = [
        Conversion(label: "ニュートン(N)", value: "9.80665", buttonColor: Color.asahanada, unit: "N"),
        Conversion(label: "ダイン(dyn)", value: "980665", buttonColor: Color.asahanada, unit: "dyn"),
        Conversion(label: "重量ポンド(lbf)", value: "2.2046226218488", buttonColor: Color.smalt, unit: "lbf"),
        Conversion(label: "重量トン(tnf)", value: "0.0011023113109244", buttonColor: Color.smalt, unit: "tnf"),
        Conversion(label: "パウンダル(pdl)", value: "70.931635283968", buttonColor: Color.smalt, unit: "pdl"),
    ]
    
    // ニュートン
    static let fromNewton = [
        Conversion(label: "重量キログラム(kgf)", value: "0.10197162129779", buttonColor: Color.asahanada, unit: "kgf"),
        Conversion(label: "ダイン(dyn)", value: "100000", buttonColor: Color.asahanada, unit: "dyn"),
        Conversion(label: "重量ポンド(lbf)", value: "0.22480894309971", buttonColor: Color.smalt, unit: "lbf"),
        Conversion(label: "重量トン(tnf)", value: "1.1240447154986E-4", buttonColor: Color.smalt, unit: "tnf"),
        Conversion(label: "パウンダル(pdl)", value: "7.2330138512099", buttonColor: Color.smalt, unit: "pdl"),
    ]
    
    // ダイン
    static let fromDyne = [
        Conversion(label: "重量キログラム(kgf)", value: "1.0197162129779E-6", buttonColor: Color.asahanada, unit: "kgf"),
        Conversion(label: "ニュートン(N)", value: "1.0E-5", buttonColor: Color.asahanada, unit: "N"),
        Conversion(label: "重量ポンド(lbf)", value: "2.2480894309971E-6", buttonColor: Color.smalt, unit: "lbf"),
        Conversion(label: "重量トン(tnf)", value: "1.1240447154986E-9", buttonColor: Color.smalt, unit: "tnf"),
        Conversion(label: "パウンダル(pdl)", value: "7.2330138512099E-5", buttonColor: Color.smalt, unit: "pdl"),
    ]
    
    // 重量ポンド
    static let fromPoundForce = [
        Conversion(label: "重量キログラム(kgf)", value: "0.45359237", buttonColor: Color.asahanada, unit: "kgf"),
        Conversion(label: "ニュートン(N)", value: "4.4482216152605", buttonColor: Color.asahanada, unit: "N"),
        Conversion(label: "ダイン(dyn)", value: "444822.16152605", buttonColor: Color.asahanada, unit: "dyn"),
        Conversion(label: "重量トン(tnf)", value: "5.0E-4", buttonColor: Color.smalt, unit: "tnf"),
        Conversion(label: "パウンダル(pdl)", value: "32.17404855643", buttonColor: Color.smalt, unit: "pdl"),
    ]
    
    // 重量トン
    static let fromTonneForce = [
        Conversion(label: "重量キログラム(kgf)", value: "907.18474", buttonColor: Color.asahanada, unit: "kgf"),
        Conversion(label: "ニュートン(N)", value: "8896.443230521", buttonColor: Color.asahanada, unit: "N"),
        Conversion(label: "ダイン(dyn)", value: "889644323.0521", buttonColor: Color.asahanada, unit: "dyn"),
        Conversion(label: "重量ポンド(lbf)", value: "20000", buttonColor: Color.smalt, unit: "lbf"),
        Conversion(label: "パウンダル(pdl)", value: "64348.097112861", buttonColor: Color.smalt, unit: "pdl"),
    ]
    
    // パウンダル
    static let fromPoundal = [
        Conversion(label: "重量キログラム(kgf)", value: "0.014098081850173", buttonColor: Color.asahanada, unit: "kgf"),
        Conversion(label: "ニュートン(N)", value: "0.138254954376", buttonColor: Color.asahanada, unit: "N"),
        Conversion(label: "ダイン(dyn)", value: "13825.4954376", buttonColor: Color.asahanada, unit: "dyn"),
        Conversion(label: "重量ポンド(lbf)", value: "0.031080950171567", buttonColor: Color.smalt, unit: "lbf"),
        Conversion(label: "重量トン(tnf)", value: "1.5540475085784E-5", buttonColor: Color.smalt, unit: "tnf"),
    ]
}
