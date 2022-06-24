//
//  VelocityConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/13.
//

import Foundation
import SwiftUI

struct VelocityConversions {
    // メートル毎秒
    static let fromMetersPerSecond = [
        Conversion(label: "メートル毎分(m/min)", value: "60", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "3600", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.001", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.06", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "3.6", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "3.2808398950131", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "196.85039370079", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "11811.023622047", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.00062137119223733", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.03728227153424", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "2.2369362920544", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "1.9438444924406", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.0029411764705882", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // メートル毎分
    static let fromMetersPerMinute = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.016666666666667", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎時(m/h)", value: "60", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "1.6666666666667E-5", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.001", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "0.06", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "0.054680664916885", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "3.2808398950131", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "196.85039370079", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "1.0356186537289E-5", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.00062137119223733", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "0.03728227153424", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "0.032397408207343", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "4.9019607843137E-5", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // メートル毎時
    static let fromMetersPerHour = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.00027777777777778", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "0.016666666666667", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "2.7777777777778E-7", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "1.6666666666667E-5", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "0.001", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "0.00091134441528142", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "0.054680664916885", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "3.2808398950131", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "1.7260310895481E-7", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "1.0356186537289E-5", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "0.00062137119223733", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "0.00053995680345572", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "8.1699346405229E-7", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // キロメートル毎秒
    static let fromKilometersPerSecond = [
        Conversion(label: "メートル毎秒(m/s)", value: "1000", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "60000", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "3600000", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎分(km/min)", value: "60", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "3600", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "3280.8398950131", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "196850.39370079", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "11811023.622047", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.62137119223733", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "37.28227153424", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "2236.9362920544", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "1943.8444924406", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "2.9411764705882", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // キロメートル毎分
    static let fromKilometersPerMinute = [
        Conversion(label: "メートル毎秒(m/s)", value: "16.666666666667", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "1000", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "60000", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.016666666666667", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎時(km/h)", value: "60", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "54.680664916885", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "3280.8398950131", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "196850.39370079", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.010356186537289", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.62137119223733", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "37.28227153424", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "ノット(kn)", value: "32.397408207343", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.049019607843137", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // キロメートル毎時
    static let fromKilometersPerHour = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.27777777777778", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "16.666666666667", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "1000", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.00027777777777778", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.016666666666667", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "フィート毎秒(ft/s)", value: "0.91134441528142", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "54.680664916885", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "3280.8398950131", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.00017260310895481", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.010356186537289", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "0.62137119223733", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "0.53995680345572", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.00081699346405229", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // フィート毎秒
    static let fromFootPerSecond = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.3048", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "18.288", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "1097.28", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.0003048", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.018288", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "1.09728", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎分(ft/min)", value: "60", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "3600", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.00018939393939394", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.011363636363636", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "0.68181818181818", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "0.5924838012959", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.00089647058823529", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // フィート毎分
    static let fromFootPerMinute = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.3048", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "18.288", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "1097.28", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.0003048", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.018288", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "1.09728", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "60", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎時(ft/h)", value: "3600", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.00018939393939394", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.011363636363636", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "0.68181818181818", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "0.5924838012959", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.00089647058823529", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // フィート毎時
    static let fromFootPerHour = [
        Conversion(label: "メートル毎秒(m/s)", value: "8.4666666666667E-5", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "0.00508", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "0.3048", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "8.4666666666667E-8", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "5.08E-6", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "0.0003048", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "0.00027777777777778", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "マイル毎秒(mi/s)", value: "5.2609427609428E-8", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "3.1565656565657E-6", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "0.00018939393939394", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "0.0001645788336933", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "2.4901960784314E-7", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // マイル毎秒
    static let fromMilesPerSecond = [
        Conversion(label: "メートル毎秒(m/s)", value: "1609.344", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "96560.64", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "5793638.4", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "1.609344", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "96.56064", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "5793.6384", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "5280", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "316800", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "19008000", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎分(mi/min)", value: "60", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎時(mi/h)", value: "3600", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "3128.3144708423", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "4.7333647058824", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // マイル毎分
    static let fromMilesPerMinute = [
        Conversion(label: "メートル毎秒(m/s)", value: "26.8224", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "1609.344", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "96560.64", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.0268224", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "1.609344", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "96.56064", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "88", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "5280", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "316800", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎時(mi/h)", value: "60", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "52.138574514039", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.078889411764706", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // マイル毎時
    static let fromMilesPerHour = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.44704", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "26.8224", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "1609.344", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.00044704", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.0268224", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "1.609344", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "1.4666666666667", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "88", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "5280", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.00027777777777778", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.016666666666667", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "ノット(kn)", value: "0.86897624190065", buttonColor: Color.konruri, unit: "kn"),
        Conversion(label: "マッハ(M)", value: "0.0013148235294118", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // ノット
    static let fromKnot = [
        Conversion(label: "メートル毎秒(m/s)", value: "0.51444444444444", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "30.866666666667", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "1852", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.00051444444444444", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "0.030866666666667", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "1.852", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "1.6878098571012", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "101.26859142607", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "6076.1154855643", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.00031966095778432", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "0.019179657467059", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎分(mi/h)", value: "1.1507794480235", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "マッハ(M)", value: "0.0015130718954248", buttonColor: Color.lightnessGreen, unit: "M"),
    ]
    
    // マッハ
    static let fromMach = [
        Conversion(label: "メートル毎秒(m/s)", value: "340", buttonColor: Color.asahanada, unit: "m/s"),
        Conversion(label: "メートル毎分(m/min)", value: "20400", buttonColor: Color.asahanada, unit: "m/min"),
        Conversion(label: "メートル毎時(m/h)", value: "1224000", buttonColor: Color.asahanada, unit: "m/h"),
        Conversion(label: "キロメートル毎秒(km/s)", value: "0.34", buttonColor: Color.asahanada, unit: "km/s"),
        Conversion(label: "キロメートル毎分(km/min)", value: "20.4", buttonColor: Color.asahanada, unit: "km/min"),
        Conversion(label: "キロメートル毎時(km/h)", value: "1224", buttonColor: Color.asahanada, unit: "km/h"),
        Conversion(label: "フィート毎秒(ft/s)", value: "1115.4855643045", buttonColor: Color.smalt, unit: "ft/s"),
        Conversion(label: "フィート毎分(ft/min)", value: "66929.133858268", buttonColor: Color.smalt, unit: "ft/min"),
        Conversion(label: "フィート毎時(ft/h)", value: "4015748.0314961", buttonColor: Color.smalt, unit: "ft/h"),
        Conversion(label: "マイル毎秒(mi/s)", value: "0.21126620536069", buttonColor: Color.smalt, unit: "mi/s"),
        Conversion(label: "マイル毎分(mi/min)", value: "12.675972321642", buttonColor: Color.smalt, unit: "mi/min"),
        Conversion(label: "マイル毎分(mi/h)", value: "760.5583392985", buttonColor: Color.smalt, unit: "mi/h"),
        Conversion(label: "ノット(kn)", value: "660.90712742981", buttonColor: Color.konruri, unit: "kn"),
    ]
}
