//
//  TimeData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/13.
//

import Foundation

struct TimeData {
    static let times = [femtosecond, picosecond, nanosecond, microsecond, millisecond, second, minute, hour, day, week, shortMonth, longMonth, commonYear, leapYear, century, julianYear, julianCentury, gregorianYear, siderealYear]
    
    // フェムト秒
    static let femtosecond = Unit(label: "フェムト秒(fs)", conversions: TimeConversions.fromFemtosecond, unit: "fs")
    
    // ピコ秒
    static let picosecond = Unit(label: "ピコ秒(ps)", conversions: TimeConversions.fromPicosecond, unit: "ps")
    
    // ナノ秒
    static let nanosecond = Unit(label: "ナノ秒(ns)", conversions: TimeConversions.fromNanosecond, unit: "ns")
    
    // マイクロ秒
    static let microsecond = Unit(label: "マイクロ秒(µs)", conversions: TimeConversions.fromMicrosecond, unit: "µs")
    
    // ミリ秒
    static let millisecond = Unit(label: "ミリ秒(ms)", conversions: TimeConversions.fromMillisecond, unit: "ms")
    
    // 秒
    static let second = Unit(label: "秒(s)", conversions: TimeConversions.fromSecond, unit: "s")
    
    // 分
    static let minute = Unit(label: "分(min)", conversions: TimeConversions.fromMinute, unit: "min")
    
    // 時間
    static let hour = Unit(label: "時間(h)", conversions: TimeConversions.fromHour, unit: "h")
    
    // 日
    static let day = Unit(label: "日(d)", conversions: TimeConversions.fromDay, unit: "d")
    
    // 週
    static let week = Unit(label: "週(w)", conversions: TimeConversions.fromWeek, unit: "w")
    
    // 小の月
    static let shortMonth = Unit(label: "小の月(m)", conversions: TimeConversions.fromShortMonth, unit: "m")
    
    // 大の月
    static let longMonth = Unit(label: "大の月(m)", conversions: TimeConversions.fromLongMonth, unit: "m")
    
    // 太陽暦平年
    static let commonYear = Unit(label: "太陽暦平年(y)", conversions: TimeConversions.fromCommonYear, unit: "y")
    
    // 太陽暦閏年
    static let leapYear = Unit(label: "太陽暦閏年(y)", conversions: TimeConversions.fromLeapYear, unit: "y")
    
    // 太陽暦世紀
    static let century = Unit(label: "太陽暦世紀(C)", conversions: TimeConversions.fromCentury, unit: "C")
    
    // ユリウス暦年
    static let julianYear = Unit(label: "ユリウス暦年(y)", conversions: TimeConversions.fromJulianYear, unit: "y")
    
    // ユリウス暦年
    static let julianCentury = Unit(label: "ユリウス歴世紀(C)", conversions: TimeConversions.fromJulianCentury, unit: "C")
    
    // ユリウス暦年
    static let gregorianYear = Unit(label: "グレゴリオ暦年(y)", conversions: TimeConversions.fromGregorianYear, unit: "y")
    
    // ユリウス暦年
    static let siderealYear = Unit(label: "恒星年(y)", conversions: TimeConversions.fromSiderealYear, unit: "y")
}
