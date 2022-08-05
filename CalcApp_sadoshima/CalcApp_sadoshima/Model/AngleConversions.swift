//
//  AngleConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation
import SwiftUI

struct AngleConversions {
    // 度
    static let fromArcDegree = [
        Conversion(label: "分(\')", value: "60", buttonColor: Color.asahanada, unit: "\'"),
        Conversion(label: "秒(\")", value: "3600", buttonColor: Color.asahanada, unit: "\""),
        Conversion(label: "ラジアン(rad)", value: "0.017453292519943", buttonColor: Color.smalt, unit: "rad"),
        Conversion(label: "グラード(grad)", value: "1.1111111111111", buttonColor: Color.konruri, unit: "grad"),
        Conversion(label: "ミル(mil)", value: "17.777777777778", buttonColor: Color.lightnessGreen, unit: "mil"),
        Conversion(label: "勾配(%)", value: "1.7455064928218", buttonColor: Color.moegi, unit: "%")
    ]
    
    // 分
    static let fromMinuteOfArc = [
        Conversion(label: "度(°)", value: "0.016666666666667", buttonColor: Color.asahanada, unit: "°"),
        Conversion(label: "秒(\")", value: "60", buttonColor: Color.asahanada, unit: "\""),
        Conversion(label: "ラジアン(rad)", value: "0.00029088820866572", buttonColor: Color.smalt, unit: "rad"),
        Conversion(label: "グラード(grad)", value: "0.018518518518519", buttonColor: Color.konruri, unit: "grad"),
        Conversion(label: "ミル(mil)", value: "0.2962962962963", buttonColor: Color.lightnessGreen, unit: "mil"),
        Conversion(label: "勾配(%)", value: "0.029088821687032", buttonColor: Color.moegi, unit: "%")
    ]
    
    // 秒
    static let fromSecondOfArc = [
        Conversion(label: "度(°)", value: "0.00027777777777778", buttonColor: Color.asahanada, unit: "°"),
        Conversion(label: "分(\')", value: "0.016666666666667", buttonColor: Color.asahanada, unit: "\'"),
        Conversion(label: "ラジアン(rad)", value: "4.8481368110954E-6", buttonColor: Color.smalt, unit: "rad"),
        Conversion(label: "グラード(grad)", value: "0.00030864197530864", buttonColor: Color.konruri, unit: "grad"),
        Conversion(label: "ミル(mil)", value: "0.0049382716049383", buttonColor: Color.lightnessGreen, unit: "mil"),
        Conversion(label: "勾配(%)", value: "0.00048481368111333", buttonColor: Color.moegi, unit: "%")
    ]
    
    // ラジアン
    static let fromRadian = [
        Conversion(label: "度(°)", value: "57.295779513082", buttonColor: Color.asahanada, unit: "°"),
        Conversion(label: "分(\')", value: "3437.7467707849", buttonColor: Color.asahanada, unit: "\'"),
        Conversion(label: "秒(\")", value: "206264.8062471", buttonColor: Color.asahanada, unit: "\""),
        Conversion(label: "グラード(grad)", value: "63.661977236758", buttonColor: Color.konruri, unit: "grad"),
        Conversion(label: "ミル(mil)", value: "1018.5916357881", buttonColor: Color.lightnessGreen, unit: "mil"),
        Conversion(label: "勾配(%)", value: "155.74077246549", buttonColor: Color.moegi, unit: "%")
    ]
    
    // グラード
    static let fromGrade = [
        Conversion(label: "度(°)", value: "0.9", buttonColor: Color.asahanada, unit: "°"),
        Conversion(label: "分(\')", value: "54", buttonColor: Color.asahanada, unit: "\'"),
        Conversion(label: "秒(\")", value: "3240", buttonColor: Color.asahanada, unit: "\""),
        Conversion(label: "ラジアン(rad)", value: "0.015707963267949", buttonColor: Color.smalt, unit: "rad"),
        Conversion(label: "ミル(mil)", value: "16", buttonColor: Color.lightnessGreen, unit: "mil"),
        Conversion(label: "勾配(%)", value: "1.5709255323665", buttonColor: Color.moegi, unit: "%")
    ]
    
    // ミル
    static let fromMil = [
        Conversion(label: "度(°)", value: "0.05625", buttonColor: Color.asahanada, unit: "°"),
        Conversion(label: "分(\')", value: "3.375", buttonColor: Color.asahanada, unit: "\'"),
        Conversion(label: "秒(\")", value: "202.5", buttonColor: Color.asahanada, unit: "\""),
        Conversion(label: "ラジアン(rad)", value: "0.00098174770424681", buttonColor: Color.smalt, unit: "rad"),
        Conversion(label: "グラード(grad)", value: "0.0625", buttonColor: Color.konruri, unit: "grad"),
        Conversion(label: "勾配(%)", value: "0.098174801965909", buttonColor: Color.moegi, unit: "%")
    ]
    
    // 勾配
    static let fromGradient = [
        Conversion(label: "度(°)", value: "0.57289961630759", buttonColor: Color.asahanada, unit: "°"),
        Conversion(label: "分(\')", value: "34.373976978456", buttonColor: Color.asahanada, unit: "\'"),
        Conversion(label: "秒(\")", value: "2062.4386187073", buttonColor: Color.asahanada, unit: "\""),
        Conversion(label: "ラジアン(rad)", value: "0.0099989845879797", buttonColor: Color.smalt, unit: "rad"),
        Conversion(label: "グラード(grad)", value: "0.63655512923066", buttonColor: Color.konruri, unit: "grad"),
        Conversion(label: "ミル(mil)", value: "10.184882067691", buttonColor: Color.lightnessGreen, unit: "mil")
    ]
}
