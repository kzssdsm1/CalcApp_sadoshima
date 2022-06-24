//
//  PressureConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/21.
//

import Foundation
import SwiftUI

struct PressureConversions {
    // パスカル
    static let fromPascal = [
        Conversion(label: "ヘクトパスカル(hPa)", value: "0.01", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.001", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "1.0E-6", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "1.0E-5", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "9.8692326671601E-6", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "1.0197162129779E-5", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "0.10197162129779", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "0.010197162129779", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.00010197162129779", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "0.0040146148037315", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.00033455123364429", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "0.0075006157584566", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.0002952998330101", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "0.0075006168270417", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.00014503773773375", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // ヘクトパスカル
    static let fromHectopascal = [
        Conversion(label: "パスカル(Pa)", value: "100", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.1", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.0001", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.001", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.00098692326671601", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.0010197162129779", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "10.197162129779", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "1.0197162129779", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.010197162129779", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "0.40146148037315", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.033455123364429", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "0.75006157584566", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.02952998330101", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "0.75006168270417", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.014503773773375", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // キロパスカル
    static let fromKilopascal = [
        Conversion(label: "パスカル(Pa)", value: "1000", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "10", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.001", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.01", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.0098692326671601", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.010197162129779", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "101.97162129779", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "10.197162129779", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.10197162129779", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "4.0146148037315", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.33455123364429", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "7.5006157584566", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.2952998330101", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "7.5006168270417", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.14503773773375", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // メガパスカル
    static let fromMegapascal = [
        Conversion(label: "パスカル(Pa)", value: "1000000", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "10000", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "1000", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "バール(bar)", value: "10", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "9.8692326671601", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "10.197162129779", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "101971.62129779", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "10197.162129779", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "101.97162129779", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "4014.6148037315", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "334.55123364429", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "7500.6157584566", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "295.2998330101", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "7500.6168270417", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "145.03773773375", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // バール
    static let fromBar = [
        Conversion(label: "パスカル(Pa)", value: "100000", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "1000", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "100", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.1", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "標準大気圧(atm)", value: "0.98692326671601", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "1.0197162129779", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "10197.162129779", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "1019.7162129779", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "10.197162129779", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "401.46148037315", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "33.455123364429", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "750.06157584566", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "29.52998330101", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "750.06168270417", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "14.503773773375", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 標準大気圧
    static let fromStandardAtmosphere = [
        Conversion(label: "パスカル(Pa)", value: "101325", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "1013.25", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "101.325", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.101325", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "1.01325", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "工学気圧(at)", value: "1.0332274527999", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "10332.274527999", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "1033.2274527999", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "10.332274527999", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "406.78084498809", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "33.898403749008", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "759.99989172561", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "29.921255579748", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "760", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "14.695948775872", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 工学気圧
    static let fromTechnicalAtmosphere = [
        Conversion(label: "パスカル(Pa)", value: "98066.5", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "980.665", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "98.0665", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.0980665", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.980665", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.96784110535406", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "10000", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "1000", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "10", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "393.69922265014", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "32.808268554178", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "735.55913527668", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "28.959021073885", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "735.55924006908", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "14.223343307467", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水柱ミリメートル
    static let fromMillimetersOfWaterColumn = [
        Conversion(label: "パスカル(Pa)", value: "9.80665", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "0.0980665", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.00980665", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "9.80665E-6", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "9.80665E-5", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "9.6784110535406E-5", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.0001", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "0.1", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.001", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "0.039369922265014", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.0032808268554178", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "0.073555913527668", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.0028959021073885", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "0.073555924006908", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.0014223343307467", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水柱センチメートル
    static let fromCentimetersOfWaterColumn = [
        Conversion(label: "パスカル(Pa)", value: "98.0665", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "0.980665", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.0980665", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "9.80665E-5", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.000980665", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.00096784110535406", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.001", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "10", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.01", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "0.39369922265014", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.032808268554178", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "0.73555913527668", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.028959021073885", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "0.73555924006908", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.014223343307467", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水柱メートル
    static let fromMetersOfWaterColumn = [
        Conversion(label: "パスカル(Pa)", value: "9806.65", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "98.0665", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "9.80665", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.00980665", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.0980665", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.096784110535406", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.1", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "1000", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "100", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "39.369922265014", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "3.2808268554178", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "73.555913527668", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "2.8959021073885", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "73.555924006908", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "1.4223343307467", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水柱インチ
    static let fromInchesOfWaterColumn = [
        Conversion(label: "パスカル(Pa)", value: "249.0899", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "2.490899", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.2490899", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.0002490899", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.002490899", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.0024583261781396", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.0025400100951905", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "25.400100951905", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "2.5400100951905", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.025400100951905", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.083333333333333", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "1.8683276292124", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.073556205874503", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "1.8683278953861", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.036127435588326", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水柱フィート
    static let fromFootOfWaterColumn = [
        Conversion(label: "パスカル(Pa)", value: "2989.0788", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "29.890788", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "2.9890788", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.0029890788", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.029890788", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.029499914137676", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.030480121142286", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "304.80121142286", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "30.480121142286", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.30480121142286", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "12", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "22.419931550548", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.88267447049403", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "22.419934744634", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.43352922705991", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水銀柱ミリメートル
    static let fromMillimetersOfMercuryColumn = [
        Conversion(label: "パスカル(Pa)", value: "133.322387415", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "1.33322387415", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.133322387415", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.000133322387415", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.00133322387415", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.0013157896611399", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.00135951", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "13.5951", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "1.35951", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.0135951", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "0.53523803018509", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.04460316918209", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.039370078740157", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "1.0000001424663", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.019336777459934", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 水銀柱インチ
    static let fromInchesOfMercuryColumn = [
        Conversion(label: "パスカル(Pa)", value: "3386.388640341", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "33.86388640341", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "3.386388640341", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.003386388640341", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.03386388640341", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.033421057392953", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.034531554", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "345.31554", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "34.531554", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.34531554", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "13.595045966701", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "1.1329204972251", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "25.4", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "トル(Torr)", value: "25.400003618645", buttonColor: Color.smalt, unit: "Torr"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.49115414748233", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // トル
    static let fromTorr = [
        Conversion(label: "パスカル(Pa)", value: "133.32236842105", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "1.3332236842105", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "0.13332236842105", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.00013332236842105", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.0013332236842105", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.0013157894736842", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.0013595098063156", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "13.595098063156", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "1.3595098063156", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.013595098063156", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "0.5352379539317", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "0.044603162827642", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "0.9999998575337", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "0.039370073131248", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "重量ポンド毎平方インチ(psi)", value: "0.019336774705095", buttonColor: Color.konruri, unit: "psi")
    ]
    
    // 重量ポンド毎平方インチ
    static let fromPoundForcePerSquareInch = [
        Conversion(label: "パスカル(Pa)", value: "6894.757293", buttonColor: Color.asahanada, unit: "Pa"),
        Conversion(label: "ヘクトパスカル(hPa)", value: "68.94757293", buttonColor: Color.asahanada, unit: "hPa"),
        Conversion(label: "キロパスカル(kPa)", value: "6.894757293", buttonColor: Color.asahanada, unit: "kPa"),
        Conversion(label: "メガパスカル(MPa)", value: "0.006894757293", buttonColor: Color.asahanada, unit: "MPa"),
        Conversion(label: "バール(bar)", value: "0.06894757293", buttonColor: Color.asahanada, unit: "bar"),
        Conversion(label: "標準大気圧(atm)", value: "0.068045963908216", buttonColor: Color.smalt, unit: "atm"),
        Conversion(label: "工学気圧(at)", value: "0.070306957962199", buttonColor: Color.smalt, unit: "at"),
        Conversion(label: "水柱ミリメートル(mmH2O)", value: "703.06957962199", buttonColor: Color.smalt, unit: "mmH2O"),
        Conversion(label: "水柱センチメートル(cmH2O)", value: "70.306957962199", buttonColor: Color.smalt, unit: "cmH2O"),
        Conversion(label: "水柱メートル(mH2O)", value: "0.70306957962199", buttonColor: Color.smalt, unit: "mH2O"),
        Conversion(label: "水柱インチ(inH2O)", value: "27.679794696614", buttonColor: Color.smalt, unit: "inH2O"),
        Conversion(label: "水柱フィート(ftH2O)", value: "2.3066495580511", buttonColor: Color.smalt, unit: "ftH2O"),
        Conversion(label: "水銀柱ミリメートル(mmHg)", value: "51.714925202609", buttonColor: Color.smalt, unit: "mmHg"),
        Conversion(label: "水銀柱インチ(inHg)", value: "2.0360206772681", buttonColor: Color.smalt, unit: "inHg"),
        Conversion(label: "トル(Torr)", value: "51.714932570244", buttonColor: Color.smalt, unit: "Torr")
    ]
}
