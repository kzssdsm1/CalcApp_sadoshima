//
//  TimeConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/13.
//

import Foundation
import SwiftUI

struct TimeConversions {
    // フェムト秒
    static let fromFemtosecond = [
        Conversion(label: "ピコ秒(ps)", value: "0.001", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "1.0E-6", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "1.0E-9", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "1.0E-12", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "1.0E-15", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "1.6666666666667E-17", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "2.7777777777778E-19", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "1.1574074074074E-20", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "1.6534391534392E-21", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "3.858024691358E-22", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "3.7335722819594E-22", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "3.7335722819594E-22", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "3.1623153207853E-23", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "3.1709791983765E-25", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "3.1688087814029E-23", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "3.1688087814029E-25", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "3.1688738506811E-23", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "3.1687535787225E-23", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // ピコ秒
    static let fromPicosecond = [
        Conversion(label: "フェムト秒(fs)", value: "1000", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ナノ秒(ns)", value: "0.001", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "1.0E-6", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "1.0E-9", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "1.0E-12", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "1.6666666666667E-14", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "2.7777777777778E-16", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "1.1574074074074E-17", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "1.6534391534392E-18", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "3.858024691358E-19", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "3.7335722819594E-19", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "3.1709791983765E-20", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "3.1623153207853E-20", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "3.1709791983765E-22", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "3.1688087814029E-20", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "3.1688087814029E-22", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "3.1688738506811E-20", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "3.1687535787225E-20", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // ナノ秒
    static let fromNanosecond = [
        Conversion(label: "フェムト秒(fs)", value: "1000000", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "1000", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "マイクロ秒(µs)", value: "0.001", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "1.0E-6", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "1.0E-9", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "1.6666666666667E-11", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "2.7777777777778E-13", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "1.1574074074074E-14", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "1.6534391534392E-15", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "3.858024691358E-16", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "3.7335722819594E-16", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "3.1709791983765E-17", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "3.1623153207853E-17", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "3.1709791983765E-19", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "3.1688087814029E-17", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "3.1688087814029E-19", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "3.1688738506811E-17", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "3.1687535787225E-17", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // マイクロ秒
    static let fromMicrosecond = [
        Conversion(label: "フェムト秒(fs)", value: "1000000000", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "1000000", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "1000", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "ミリ秒(ms)", value: "0.001", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "1.0E-6", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "1.6666666666667E-8", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "2.7777777777778E-10", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "1.1574074074074E-11", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "1.6534391534392E-12", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "3.858024691358E-13", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "3.7335722819594E-13", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "3.1709791983765E-14", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "3.1623153207853E-14", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "3.1709791983765E-16", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "3.1688087814029E-14", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "3.1688087814029E-16", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "3.1688738506811E-14", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "3.1687535787225E-14", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // ミリ秒
    static let fromMillisecond = [
        Conversion(label: "フェムト秒(fs)", value: "1000000000000", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "1000000000", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "1000000", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "1000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "秒(s)", value: "0.001", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "1.6666666666667E-5", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "2.7777777777778E-7", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "1.1574074074074E-8", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "1.6534391534392E-9", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "3.858024691358E-10", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "3.7335722819594E-10", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "3.1709791983765E-11", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "3.1623153207853E-11", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "3.1709791983765E-13", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "3.1688087814029E-11", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "3.1688087814029E-13", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "3.1688738506811E-11", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "3.1687535787225E-11", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 秒
    static let fromSecond = [
        Conversion(label: "フェムト秒(fs)", value: "1000000000000000", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "1000000000000", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "1000000000", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "1000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "1000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "分(min)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "0.00027777777777778", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "1.1574074074074E-5", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "1.6534391534392E-6", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "3.858024691358E-7", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "3.7335722819594E-7", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "3.1709791983765E-8", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "3.1623153207853E-8", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "3.1709791983765E-10", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "3.1688087814029E-8", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "3.1688087814029E-10", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "3.1688738506811E-8", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "3.1687535787225E-8", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 分
    static let fromMinute = [
        Conversion(label: "フェムト秒(fs)", value: "6.0E+16", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "60000000000000", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "60000000000", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "60000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "60000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "60", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "時間(h)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "0.00069444444444444", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "9.9206349206349E-5", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "2.3148148148148E-5", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "2.2401433691756E-5", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "1.9025875190259E-6", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "1.8973891924712E-6", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "1.9025875190259E-8", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "1.9012852688417E-6", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "1.9012852688417E-8", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "1.9013243104087E-6", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "1.9012521472335E-6", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 時間
    static let fromHour = [
        Conversion(label: "フェムト秒(fs)", value: "3.6E+18", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.6E+15", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3600000000000", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "3600000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "3600000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "3600", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "60", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "日(d)", value: "0.041666666666667", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "0.005952380952381", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "0.0013888888888889", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "0.0013440860215054", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "0.00011415525114155", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.00011384335154827", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "1.1415525114155E-6", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.0001140771161305", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "1.140771161305E-6", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "0.00011407945862452", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.00011407512883401", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 日
    static let fromDay = [
        Conversion(label: "フェムト秒(fs)", value: "8.64E+19", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "8.64E+16", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "86400000000000", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "86400000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "86400000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "86400", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "1440", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "24", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "週(w)", value: "0.14285714285714", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "0.033333333333333", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "0.032258064516129", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "0.0027397260273973", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.0027322404371585", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "2.7397260273973E-5", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.0027378507871321", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "2.7378507871321E-5", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "0.0027379070069885", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.0027378030920162", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 週
    static let fromWeek = [
        Conversion(label: "フェムト秒(fs)", value: "6.048E+20", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "6.048E+17", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "6.048E+14", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "604800000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "604800000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "604800", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "10080", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "168", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "7", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "小の月(m)", value: "0.23333333333333", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "0.2258064516129", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "0.019178082191781", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.019125683060109", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.00019178082191781", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.019164955509925", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.00019164955509925", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "0.01916534904892", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.019164621644114", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 小の月
    static let fromShortMonth = [
        Conversion(label: "フェムト秒(fs)", value: "2.592E+21", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "2.592E+18", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "2.592E+15", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "2592000000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "2592000000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "2592000", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "43200", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "720", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "30", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "4.2857142857143", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "大の月(m)", value: "0.96774193548387", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "0.082191780821918", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.081967213114754", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.00082191780821918", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.082135523613963", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.00082135523613963", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "0.082137210209655", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.082134092760487", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 大の月
    static let fromLongMonth = [
        Conversion(label: "フェムト秒(fs)", value: "2.6784E+21", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "2.6784E+18", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "2.6784E+15", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "2678400000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "2678400000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "2678400", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "44640", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "744", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "31", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "4.4285714285714", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "1.0333333333333", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "0.084931506849315", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.084699453551913", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.00084931506849315", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.084873374401095", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.00084873374401095", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "0.084875117216644", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.084871895852503", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 太陽暦平年
    static let fromCommonYear = [
        Conversion(label: "フェムト秒(fs)", value: "3.1536E+22", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.1536E+19", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.1536E+16", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "31536000000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "31536000000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "31536000", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "525600", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "8760", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "365", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "52.142857142857", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "12.166666666667", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "11.774193548387", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦閏年(y)", value: "0.99726775956284", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.01", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.99931553730322", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.0099931553730322", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "0.99933605755081", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.99929812858592", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 太陽暦閏年
    static let fromLeapYear = [
        Conversion(label: "フェムト秒(fs)", value: "3.16224E+22", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.16224E+19", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.16224E+16", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "31622400000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "31622400000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "31622400", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "527040", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "8784", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "366", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "52.285714285714", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "12.2", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "11.806451612903", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "1.0027397260274", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.010027397260274", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "1.0020533880903", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.010020533880903", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "1.0020739645578", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "1.0020359316779", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 太陽暦世紀
    static let fromCentury = [
        Conversion(label: "フェムト秒(fs)", value: "3.1536E+24", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.1536E+21", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.1536E+18", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "3.1536E+15", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "3153600000000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "3153600000", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "52560000", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "876000", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "36500", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "5214.2857142857", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "1216.6666666667", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "1177.4193548387", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "100", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "99.726775956284", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "ユリウス暦年(y)", value: "99.931553730322", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.99931553730322", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "99.933605755081", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "99.929812858592", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // ユリウス歴年
    static let fromJulianYear = [
        Conversion(label: "フェムト秒(fs)", value: "3.15576E+22", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.15576E+19", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.15576E+16", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "31557600000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "31557600000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "31557600", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "525960", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "8766", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "365.25", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "52.178571428571", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "12.175", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "11.782258064516", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "1.0006849315068", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.99795081967213", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.010006849315068", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.01", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "1.0000205343026", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "0.99998257935893", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // ユリウス歴世紀
    static let fromJulianCentury = [
        Conversion(label: "フェムト秒(fs)", value: "3.15576E+24", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.15576E+21", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.15576E+18", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "3.15576E+15", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "3155760000000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "3155760000", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "52596000", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "876600", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "36525", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "5217.8571428571", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "1217.5", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "1178.2258064516", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "100.06849315068", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "99.795081967213", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "1.0006849315068", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "100", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "グレゴリオ暦年(y)", value: "100.00205343026", buttonColor: Color.moegi, unit: "y"),
        Conversion(label: "恒星年(y)", value: "99.998257935893", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // グレゴリオ暦年
    static let fromGregorianYear = [
        Conversion(label: "フェムト秒(fs)", value: "3.1556952E+22", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.1556952E+19", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.1556952E+16", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "31556952000000", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "31556952000", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "31556952", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "525949.2", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "8765.82", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "365.2425", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "52.1775", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "12.17475", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "11.782016129032", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "1.0006643835616", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.99793032786885", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.010006643835616", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "0.9999794661191", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.009999794661191", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "恒星年(y)", value: "0.99996204583574", buttonColor: Color.darkViolet, unit: "y")
    ]
    
    // 恒星年
    static let fromSiderealYear = [
        Conversion(label: "フェムト秒(fs)", value: "3.15581497632E+22", buttonColor: Color.asahanada, unit: "fs"),
        Conversion(label: "ピコ秒(ps)", value: "3.15581497632E+19", buttonColor: Color.asahanada, unit: "ps"),
        Conversion(label: "ナノ秒(ns)", value: "3.15581497632E+16", buttonColor: Color.asahanada, unit: "ns"),
        Conversion(label: "マイクロ秒(µs)", value: "31558149763200", buttonColor: Color.asahanada, unit: "µs"),
        Conversion(label: "ミリ秒(ms)", value: "31558149763.2", buttonColor: Color.asahanada, unit: "ms"),
        Conversion(label: "秒(s)", value: "31558149.7632", buttonColor: Color.asahanada, unit: "s"),
        Conversion(label: "分(min)", value: "525969.16272", buttonColor: Color.smalt, unit: "min"),
        Conversion(label: "時間(h)", value: "8766.152712", buttonColor: Color.smalt, unit: "h"),
        Conversion(label: "日(d)", value: "365.256363", buttonColor: Color.smalt, unit: "d"),
        Conversion(label: "週(w)", value: "52.179480428571", buttonColor: Color.konruri, unit: "w"),
        Conversion(label: "小の月(m)", value: "12.1752121", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "大の月(m)", value: "11.782463322581", buttonColor: Color.konruri, unit: "m"),
        Conversion(label: "太陽暦平年(y)", value: "1.0007023643836", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦閏年(y)", value: "0.99796820491803", buttonColor: Color.konruri, unit: "y"),
        Conversion(label: "太陽暦世紀(C)", value: "0.010007023643836", buttonColor: Color.konruri, unit: "C"),
        Conversion(label: "ユリウス暦年(y)", value: "1.0000174209446", buttonColor: Color.lightnessGreen, unit: "y"),
        Conversion(label: "ユリウス暦世紀(C)", value: "0.010000174209446", buttonColor: Color.lightnessGreen, unit: "C"),
        Conversion(label: "グレゴリオ暦年(y)", value: "1.0000379556048", buttonColor: Color.moegi, unit: "y")
    ]
}
