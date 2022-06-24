//
//  AccelerationData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation

struct AccelerationData {
    static let accelerations = [metersPerSecondSquared, kilometersPerHourPerSecond, gal, footPerSecondSquared, footPerMinutePerSecond, footPerHourPerSecond, inchesPerSecondSquared, inchesPerMinutePerSecond, milesPerSecondSquared, milesPerMinutePerSecond, knotsPerSecond, gravitationalAcceleration]
    
    // メートル毎秒毎秒
    static let metersPerSecondSquared = Unit(label: "メートル毎秒毎秒(m/s2)", conversions: AccelerationConversions.fromMetersPerSecondSquared, unit: "m/s2")
    
    // キロメートル毎時毎秒
    static let kilometersPerHourPerSecond = Unit(label: "キロメートル毎時毎秒(km/h/s)", conversions: AccelerationConversions.fromKilometersPerHourPerSecond, unit: "km/h/s")
    
    // ガル
    static let gal = Unit(label: "ガル(Gal)", conversions: AccelerationConversions.fromGal, unit: "Gal")
    
    // フィート毎秒毎秒
    static let footPerSecondSquared = Unit(label: "フィート毎秒毎秒(fps2)", conversions: AccelerationConversions.fromFootPerSecondSquared, unit: "fps2")
    
    // フィート毎分毎秒
    static let footPerMinutePerSecond = Unit(label: "フィート毎分毎秒(fpm/s)", conversions: AccelerationConversions.fromFootPerMinutePerSecond, unit: "fpm/s")
    
    // フィート毎時毎秒
    static let footPerHourPerSecond = Unit(label: "フィート毎時毎秒(fph/s)", conversions: AccelerationConversions.fromFootPerHourPerSecond, unit: "fph/s")
    
    // インチ毎秒毎秒
    static let inchesPerSecondSquared = Unit(label: "インチ毎秒毎秒(ips2)", conversions: AccelerationConversions.fromInchesPerSecondSquared, unit: "ips2")
    
    // インチ毎分毎秒
    static let inchesPerMinutePerSecond = Unit(label: "インチ毎分毎秒(ipm/s)", conversions: AccelerationConversions.fromInchesPerMinutePerSecond, unit: "ipm/s")
    
    // マイル毎秒毎秒
    static let milesPerSecondSquared = Unit(label: "マイル毎秒毎秒(mps2)", conversions: AccelerationConversions.fromMilesPerSecondSquared, unit: "mps2")
    
    // マイル毎分毎秒
    static let milesPerMinutePerSecond = Unit(label: "マイル毎分毎秒(mpm/s)", conversions: AccelerationConversions.fromMilesPerMinutePerSecond, unit: "mpm/s")
    
    // ノット毎秒
    static let knotsPerSecond = Unit(label: "ノット毎秒(kn/s)", conversions: AccelerationConversions.fromKnotsPerSecond, unit: "kn/s")
    
    // 標準重力加速度
    static let gravitationalAcceleration = Unit(label: "標準重力加速度(g)", conversions: AccelerationConversions.fromGravitationalAcceleration, unit: "g")
}
