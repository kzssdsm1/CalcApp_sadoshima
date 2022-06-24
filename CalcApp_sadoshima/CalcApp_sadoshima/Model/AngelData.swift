//
//  AngelData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation

struct AngleData {
    static let angles = [arcDegree, minuteOfArc, secondOfArc, radian, grade, mil, gradient]
    
    // 度
    static let arcDegree = Unit(label: "度(°)", conversions: AngleConversions.fromArcDegree, unit: "°")
    
    // 分
    static let minuteOfArc = Unit(label: "分(\')", conversions: AngleConversions.fromMinuteOfArc, unit: "\'")
    
    // 秒
    static let secondOfArc = Unit(label: "秒(\")", conversions: AngleConversions.fromSecondOfArc, unit: "\"")
    
    // ラジアン
    static let radian = Unit(label: "ラジアン(rad)", conversions: AngleConversions.fromRadian, unit: "rad")
    
    // グラード
    static let grade = Unit(label: "グラード(grad)", conversions: AngleConversions.fromGrade, unit: "grad")
    
    // ミル
    static let mil = Unit(label: "ミル(mil)", conversions: AngleConversions.fromMil, unit: "mil")
    
    // 勾配
    static let gradient = Unit(label: "勾配(%)", conversions: AngleConversions.fromGradient, unit: "%")
}
