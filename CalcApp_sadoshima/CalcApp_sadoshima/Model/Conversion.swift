//
//  Conversion.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/28.
//

import Foundation
import SwiftUI

struct Conversion: Identifiable {
    let id = UUID()
    let label: String
    let value: String
    let buttonColor: Color
}

struct ConversionContext {
    // ミリグラム
    static let fromMilligram = [
        Conversion(label: "グラム", value: "0.001", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "1e-6", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "1e-9", buttonColor: Color.asahanada),
        Conversion(label: "グレーン", value: "0.015432358352941", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "0.00056438339119329", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "3.527396194958e-5", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "2.2046226218488e-6", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "7.8736522208885E-8", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "9.8420652761106e-10", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "1.1023113109244e-9", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "2.6666666666667e-7", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "1.6666666666667e-6", buttonColor: Color.konruri),
        Conversion(label: "両", value: "2.6666666666667E-5", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "0.00026666666666667", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "0.005", buttonColor: Color.lightnessGreen)
    ]
    
    // グラム
    static let fromGram = [
        Conversion(label: "ミリグラム", value: "1000", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.001", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "1e-6", buttonColor: Color.asahanada),
        Conversion(label: "グレーン", value: "15.432358352941", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "0.56438339119329", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "0.03527396194958", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.0022046226218488", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "7.8736522208885E-5", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "1.1023113109244E-6", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "9.8420652761106E-7", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "0.00026666666666667", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.0016666666666667", buttonColor: Color.konruri),
        Conversion(label: "両", value: "0.026666666666667", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "0.26666666666667", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "5", buttonColor: Color.lightnessGreen)
    ]
    
    // キログラム
    static let fromKilogram = [
        Conversion(label: "ミリグラム", value: "1000000", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "1000", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "0.001", buttonColor: Color.asahanada),
        Conversion(label: "グレーン", value: "15432.358352941", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "564.38339119329", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "35.27396194958", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "2.2046226218488", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.078736522208885", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "0.0011023113109244", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.00098420652761106", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "0.26666666666667", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "1.6666666666667", buttonColor: Color.konruri),
        Conversion(label: "両", value: "26.666666666667", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "266.66666666667", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "5000", buttonColor: Color.lightnessGreen)
    ]
    
    // トン
    static let fromTon = [
        Conversion(label: "ミリグラム", value: "1000000000", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "1000000", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "1000", buttonColor: Color.asahanada),
        Conversion(label: "グレーン", value: "15432358.352941", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "564383.39119329", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "35273.96194958", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "2204.6226218488", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "78.736522208885", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "1.1023113109244", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.98420652761106", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "266.66666666667", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "1666.6666666667", buttonColor: Color.konruri),
        Conversion(label: "両", value: "26666.666666667", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "266666.66666667", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "5000000", buttonColor: Color.lightnessGreen)
    ]
    
    // グレーン
    static let fromGrain = [
        Conversion(label: "ミリグラム", value: "64.79891", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "0.06479891", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "6.479891E-5", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "6.479891E-8", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "0.036571428571429", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "0.0022857142857143", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.00014285714285714", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "5.1020408163265E", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "7.1428571428571E-8", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "6.3775510204082E-8", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "1.7279709333333E-5", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.00010799818333333", buttonColor: Color.konruri),
        Conversion(label: "両", value: "0.0017279709333333", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "0.017279709333333", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "0.32399455", buttonColor: Color.lightnessGreen)
    ]
    
    // ドラム
    static let fromDram = [
        Conversion(label: "ミリグラム", value: "1771.8451953125", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "1.7718451953125", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.0017718451953125", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "1.7718451953125E-6", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "27.34375", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "0.0625", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.00390625", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.00013950892857143", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "1.953125E-6", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "1.7438616071429E-6", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "0.00047249205208333", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.0029530753255208", buttonColor: Color.konruri),
        Conversion(label: "両", value: "0.047249205208333", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "0.47249205208333", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "8.8592259765625", buttonColor: Color.lightnessGreen)
    ]
    
    // オンス
    static let fromOunce = [
        Conversion(label: "ミリグラム", value: "28349.523125", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "28.349523125", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.028349523125", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "2.8349523125E-5", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "437.5", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "16", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.0625", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.0022321428571429", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "3.125E-5", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "2.7901785714286E-5", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "0.0075598728333333", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.047249205208333", buttonColor: Color.konruri),
        Conversion(label: "両", value: "0.75598728333333", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "7.5598728333333", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "141.747615625", buttonColor: Color.lightnessGreen)
    ]
    
    // ポンド
    static let fromPound = [
        Conversion(label: "ミリグラム", value: "453592.37", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "453.59237", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.45359237", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "0.00045359237", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "7000", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "256", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "16", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.035714285714286", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "0.0005", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.00044642857142857", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "0.12095796533333", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.75598728333333", buttonColor: Color.konruri),
        Conversion(label: "両", value: "12.095796533333", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "120.95796533333", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "2267.96185", buttonColor: Color.lightnessGreen)
    ]
    
    // クォーター
    static let fromQuarter = [
        Conversion(label: "ミリグラム", value: "12700586.36", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "12700.58636", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "12.70058636", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "0.01270058636", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "196000", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "7168", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "448", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "28", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "0.014", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.0125", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "3.3868230293333", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "21.167643933333", buttonColor: Color.konruri),
        Conversion(label: "両", value: "338.68230293333", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "3386.8230293333", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "63502.9318", buttonColor: Color.lightnessGreen)
    ]
    
    // ショートトン
    static let fromShortTon = [
        Conversion(label: "ミリグラム", value: "907184740", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "907184.74", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "907.18474", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "0.90718474", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "14000000", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "512000", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "32000", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "2000", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "71.428571428571", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.89285714285714", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "241.91593066667", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "1511.9745666667", buttonColor: Color.konruri),
        Conversion(label: "両", value: "24191.593066667", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "241915.93066667", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "4535923.7", buttonColor: Color.lightnessGreen)
    ]
    
    // ロングトン
    static let fromLongTon = [
        Conversion(label: "ミリグラム", value: "1016046908.8", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "1016046.9088", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "1016.0469088", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "1.0160469088", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "15680000", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "573440", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "35840", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "2240", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "80", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "1.12", buttonColor: Color.smalt),
        Conversion(label: "貫", value: "270.94584234667", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "1693.4115146667", buttonColor: Color.konruri),
        Conversion(label: "両", value: "27094.584234667", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "270945.84234667", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "5080234.544", buttonColor: Color.lightnessGreen)
    ]
    
    // 貫
    static let fromKan = [
        Conversion(label: "ミリグラム", value: "3750000", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "3750", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "3.75", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "0.00375", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "57871.34382353", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "2116.4377169748", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "132.27735731093", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "8.2673348319329", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.29526195828332", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "0.0041336674159665", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.0036907744785415", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "6.25", buttonColor: Color.konruri),
        Conversion(label: "両", value: "100", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "1000", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "18750", buttonColor: Color.lightnessGreen)
    ]
    
    // 斤
    static let fromKin = [
        Conversion(label: "ミリグラム", value: "600000", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "600", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.6", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "0.0006", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "9259.4150117649", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "338.63003471597", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "21.164377169748", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "1.3227735731093", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.047241913325331", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "0.00066138678655463", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "0.00059052391656664", buttonColor: Color.konruri),
        Conversion(label: "貫", value: "0.16", buttonColor: Color.konruri),
        Conversion(label: "両", value: "16", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "160", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "3000", buttonColor: Color.lightnessGreen)
    ]
    
    // 両
    static let fromRyo = [
        Conversion(label: "ミリグラム", value: "37500", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "37.5", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.0375", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "3.75E-5", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "578.7134382353", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "21.164377169748", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "1.3227735731093", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.082673348319329", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.0029526195828332", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "4.1336674159665E-5", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "3.6907744785415E-5", buttonColor: Color.konruri),
        Conversion(label: "貫", value: "0.01", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.0625", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "10", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "187.5", buttonColor: Color.lightnessGreen)
    ]
    
    // 匁
    static let fromMonme = [
        Conversion(label: "ミリグラム", value: "3750", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "3.75", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.00375", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "3.75E-6", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "57.87134382353", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "2.1164377169748", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "0.13227735731093", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.0082673348319329", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "0.00029526195828332", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "4.1336674159665E-6", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "3.6907744785415E-6", buttonColor: Color.konruri),
        Conversion(label: "貫", value: "0.001", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.00625", buttonColor: Color.konruri),
        Conversion(label: "両", value: "0.1", buttonColor: Color.konruri),
        Conversion(label: "カラット", value: "18.75", buttonColor: Color.lightnessGreen)
    ]
    
    // カラット
    static let fromKarat = [
        Conversion(label: "ミリグラム", value: "200", buttonColor: Color.asahanada),
        Conversion(label: "グラム", value: "0.2", buttonColor: Color.asahanada),
        Conversion(label: "キログラム", value: "0.0002", buttonColor: Color.asahanada),
        Conversion(label: "トン", value: "2e-7", buttonColor: Color.smalt),
        Conversion(label: "グレーン", value: "3.0864716705883", buttonColor: Color.smalt),
        Conversion(label: "ドラム", value: "0.11287667823866", buttonColor: Color.smalt),
        Conversion(label: "オンス", value: "0.0070547923899161", buttonColor: Color.smalt),
        Conversion(label: "ポンド", value: "0.00044092452436976", buttonColor: Color.smalt),
        Conversion(label: "クォーター", value: "1.5747304441777E-5", buttonColor: Color.smalt),
        Conversion(label: "ショートトン", value: "2.2046226218488E-7", buttonColor: Color.smalt),
        Conversion(label: "ロングトン", value: "1.9684130552221E-7", buttonColor: Color.konruri),
        Conversion(label: "貫", value: "5.3333333333333E-5", buttonColor: Color.konruri),
        Conversion(label: "斤", value: "0.00033333333333333", buttonColor: Color.konruri),
        Conversion(label: "両", value: "0.0053333333333333", buttonColor: Color.konruri),
        Conversion(label: "匁", value: "0.053333333333333", buttonColor: Color.lightnessGreen)
    ]
}
