//
//  AccelerationConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/22.
//

import Foundation
import SwiftUI

struct AccelerationConversions {
    // メートル毎秒毎秒
    static let fromMetersPerSecondSquared = [
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "3.6", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "100", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "3.2808398950131", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "196.85039370079", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "11811.023622047", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "39.370078740157", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "2362.2047244094", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "0.00062137119223733", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.03728227153424", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "1.9438444924406", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.10197162129779", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // キロメートル毎時毎秒
    static let fromKilometersPerHourPerSecond = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.27777777777778", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "ガル(Gal)", value: "27.777777777778", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "0.91134441528142", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "54.680664916885", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "3280.8398950131", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "10.936132983377", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "656.16797900262", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "0.00017260310895481", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.010356186537289", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.53995680345572", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.028325450360498", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // ガル
    static let fromGal = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.01", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "0.036", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "0.032808398950131", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "1.9685039370079", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "118.11023622047", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "0.39370078740157", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "23.622047244094", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "6.2137119223733E-6", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.0003728227153424", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.019438444924406", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.0010197162129779", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // フィート毎秒毎秒
    static let fromFootPerSecondSquared = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.3048", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "1.09728", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "30.48", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "60", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "3600", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "12", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "720", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "0.00018939393939394", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.011363636363636", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.59248380129589", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.031080950171567", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // フィート毎分毎秒
    static let fromFootPerMinutePerSecond = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.00508", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "0.018288", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "0.508", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "60", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "0.2", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "12", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "3.1565656565657E-6", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.00018939393939394", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.0098747300215982", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.00051801583619279", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // フィート毎時毎秒
    static let fromFootPerHourPerSecond = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "8.4666666666667E-5", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "0.0003048", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "0.0084666666666667", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "0.00027777777777778", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "0.0033333333333333", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "0.2", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "5.2609427609428E-8", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "3.1565656565657E-6", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.0001645788336933", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "8.6335972698798E-6", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // インチ毎秒毎秒
    static let fromInchesPerSecondSquared = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.0254", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "0.09144", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "2.54", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "0.083333333333333", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "5", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "300", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "60", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "1.5782828282828E-5", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.0009469696969697", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.049373650107991", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.0025900791809639", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // インチ毎分毎秒
    static let fromInchesPerMinutePerSecond = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.00042333333333333", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "0.001524", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "0.042333333333333", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "0.0013888888888889", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "0.083333333333333", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "5", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "2.6304713804714E-7", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "1.5782828282828E-5", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.00082289416846652", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "4.3167986349399E-5", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // マイル毎秒毎秒
    static let fromMilesPerSecondSquared = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "1609.344", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "5793.6384", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "160934.4", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "5280", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "316800", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "19008000", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "63360", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "3801600", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "60", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "3128.3144708423", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "164.10741690588", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // マイル毎分毎秒
    static let fromMilesPerMinutePerSecond = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "26.8224", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "96.56064", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "2682.24", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "88", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "5280", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "316800", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "1056", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "63360", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "ノット毎秒(kn/s)", value: "52.138574514039", buttonColor: Color.konruri, unit: "kn/s"),
        Conversion(label: "標準重力加速度(g)", value: "2.7351236150979", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // ノット毎秒
    static let fromKnotsPerSecond = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "0.51444444444445", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "1.852", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "51.444444444445", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "1.6878098571012", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "101.26859142607", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "6076.1154855643", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "20.253718285214", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "1215.2230971129", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "0.00031966095778432", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "0.019179657467059", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "標準重力加速度(g)", value: "0.052458734067642", buttonColor: Color.lightnessGreen, unit: "g")
    ]
    
    // 標準重力加速度
    static let fromGravitationalAcceleration = [
        Conversion(label: "メートル毎秒毎秒(m/s2)", value: "9.80665", buttonColor: Color.asahanada, unit: "m/s2"),
        Conversion(label: "キロメートル毎時毎秒(km/h/s)", value: "35.30394", buttonColor: Color.asahanada, unit: "km/h/s"),
        Conversion(label: "ガル(Gal)", value: "980.665", buttonColor: Color.asahanada, unit: "Gal"),
        Conversion(label: "フィート毎秒毎秒(fps2)", value: "32.17404855643", buttonColor: Color.smalt, unit: "fps2"),
        Conversion(label: "フィート毎分毎秒(fpm/s)", value: "1930.4429133858", buttonColor: Color.smalt, unit: "fpm/s"),
        Conversion(label: "フィート毎時毎秒(fph/s)", value: "115826.57480315", buttonColor: Color.smalt, unit: "fph/s"),
        Conversion(label: "インチ毎秒毎秒(ips2)", value: "386.08858267717", buttonColor: Color.smalt, unit: "ips2"),
        Conversion(label: "インチ毎分毎秒(ipm/s)", value: "0.0060935698023542", buttonColor: Color.smalt, unit: "ipm/s"),
        Conversion(label: "マイル毎秒毎秒(mps2)", value: "0.36561418814126", buttonColor: Color.smalt, unit: "mps2"),
        Conversion(label: "マイル毎分毎秒(mpm/s)", value: "19.062602591793", buttonColor: Color.smalt, unit: "mpm/s"),
        Conversion(label: "ノット毎秒(kn/s)", value: "0.052458734067642", buttonColor: Color.konruri, unit: "kn/s")
    ]
}
