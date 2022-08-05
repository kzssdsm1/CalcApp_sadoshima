//
//  VelocityData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/13.
//

import Foundation

struct VelocityData {
    static let velocitys = [metersPerSecond, metersPerMinute, metersPerHour, kilometersPerSecond, kilometersPerMinute, kilometersPerHour, footPerSecond, footPerMinute, footPerHour, milesPerSecond, milesPerMinute, milesPerHour, knot, mach]
    
    // メートル毎秒
    static let metersPerSecond = Unit(label: "メートル毎秒(m/s)", conversions: VelocityConversions.fromMetersPerSecond, unit: "m/s")
    
    // メートル毎分
    static let metersPerMinute = Unit(label: "メートル毎分(m/min)", conversions: VelocityConversions.fromMetersPerMinute, unit: "m/min")
    
    // メートル毎時
    static let metersPerHour = Unit(label: "メートル毎時(m/h)", conversions: VelocityConversions.fromMetersPerHour, unit: "m/h")
    
    // キロメートル毎秒
    static let kilometersPerSecond = Unit(label: "キロメートル毎秒(km/s)", conversions: VelocityConversions.fromKilometersPerSecond, unit: "km/s")
    
    // キロメートル毎分
    static let kilometersPerMinute = Unit(label: "キロメートル毎分(km/min)", conversions: VelocityConversions.fromKilometersPerMinute, unit: "km/min")
    
    // キロメートル毎時
    static let kilometersPerHour = Unit(label: "キロメートル毎時(km/h)", conversions: VelocityConversions.fromKilometersPerHour, unit: "km/h")
    
    // フィート毎秒
    static let footPerSecond = Unit(label: "フィート毎秒(ft/s)", conversions: VelocityConversions.fromFootPerSecond, unit: "f/s")
    
    // フィート毎分
    static let footPerMinute = Unit(label: "フィート毎分(ft/min)", conversions: VelocityConversions.fromFootPerMinute, unit: "fpm")
    
    // フィート毎時
    static let footPerHour = Unit(label: "フィート毎時(ft/h)", conversions: VelocityConversions.fromFootPerHour, unit: "fph")
    
    // マイル毎秒
    static let milesPerSecond = Unit(label: "マイル毎秒(mi/s)", conversions: VelocityConversions.fromMilesPerSecond, unit: "mi/s")
    
    // マイル毎分
    static let milesPerMinute = Unit(label: "マイル毎分(mi/min)", conversions: VelocityConversions.fromMilesPerMinute, unit: "mi/min")
    
    // マイル毎時
    static let milesPerHour = Unit(label: "マイル毎時(mi/h)", conversions: VelocityConversions.fromMilesPerHour, unit: "mi/h")
    
    // ノット
    static let knot = Unit(label: "ノット(kn)", conversions: VelocityConversions.fromKnot, unit: "kn")
    
    // マッハ
    static let mach = Unit(label: "マッハ(M)", conversions: VelocityConversions.fromMach, unit: "M")
}
