//
//  AreaConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/10.
//

import Foundation
import SwiftUI

struct AreaConversions {
    // 平方ミリメートル
    static let fromSquareMillimetre = [
        Conversion(label: "平方センチメートル(cm2)", value: "0.01", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "1.0E-6", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "1.0E-8", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "1.0E-10", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "1.0E-12", buttonColor: Color.asahanada),
        Conversion(label: "平方インチ(sq in)", value: "0.0015500031000062", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "1.076391041671E-5", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "1.1959900463011E-6", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "2.4710538146717E-9", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "2.4710538146717E-10", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "9.8842152586866E-10", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.8610215854245E-13", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "3.025E-7", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "1.0083333333333E-8", buttonColor: Color.konruri),
        Conversion(label: "反", value: "1.0083333333333E-9", buttonColor: Color.konruri),
        Conversion(label: "町", value: "1.0083333333333E-10", buttonColor: Color.konruri)
    ]
    
    // 平方センチメートル
    static let fromSquareCentimetre = [
        Conversion(label: "平方ミリメートル(mm2)", value: "100", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "0.0001", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "1.0E-6", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "1.0E-8", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "1.0E-10", buttonColor: Color.asahanada),
        Conversion(label: "平方インチ(sq in)", value: "0.15500031000062", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "0.001076391041671", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "0.00011959900463011", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "2.4710538146717E-7", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "2.4710538146717E-8", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "9.8842152586866E-8", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.8610215854245E-11", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "3.025E-5", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "1.0083333333333E-6", buttonColor: Color.konruri),
        Conversion(label: "反", value: "1.0083333333333E-7", buttonColor: Color.konruri),
        Conversion(label: "町", value: "1.0083333333333E-8", buttonColor: Color.konruri)
    ]
    
    // 平方メートル
    static let fromSquareMetre = [
        Conversion(label: "平方ミリメートル(mm2)", value: "1000000", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "10000", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "0.01", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.0001", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "1.0E-6", buttonColor: Color.asahanada),
        Conversion(label: "平方インチ(sq in)", value: "1550.0031000062", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "10.76391041671", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "1.1959900463011", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "0.0024710538146717", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.00024710538146717", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.00098842152586866", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.8610215854245E-7", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "0.3025", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "0.010083333333333", buttonColor: Color.konruri),
        Conversion(label: "反", value: "0.0010083333333333", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.00010083333333333", buttonColor: Color.konruri)
    ]
    
    // アール
    static let fromAre = [
        Conversion(label: "平方ミリメートル(mm2)", value: "100000000", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "1000000", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "100", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.01", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.0001", buttonColor: Color.asahanada),
        Conversion(label: "平方インチ(sq in)", value: "155000.31000062", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "1076.391041671", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "119.59900463011", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "0.24710538146717", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.024710538146717", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.098842152586866", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.8610215854245E-5", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "30.25", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "1.0083333333333", buttonColor: Color.konruri),
        Conversion(label: "反", value: "0.10083333333333", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.010083333333333", buttonColor: Color.konruri)
    ]
    
    // ヘクタール
    static let fromHectare = [
        Conversion(label: "平方ミリメートル(mm2)", value: "10000000000", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "100000000", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "10000", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "100", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.01", buttonColor: Color.asahanada),
        Conversion(label: "平方インチ(sq in)", value: "15500031.000062", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "107639.1041671", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "11959.900463011", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "24.710538146717", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "2.4710538146717", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "9.8842152586866", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.0038610215854245", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "3025", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "100.83333333333", buttonColor: Color.konruri),
        Conversion(label: "反", value: "10.083333333333", buttonColor: Color.konruri),
        Conversion(label: "町", value: "1.0083333333333", buttonColor: Color.konruri)
    ]
    
    // 平方キロメートル
    static let fromSquareKilometre = [
        Conversion(label: "平方ミリメートル(mm2)", value: "1000000000000", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "10000000000", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "1000000", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "10000", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "100", buttonColor: Color.asahanada),
        Conversion(label: "平方インチ(sq in)", value: "1550003100.0062", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "10763910.41671", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "1195990.0463011", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "2471.0538146717", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "247.10538146717", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "988.42152586866", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.38610215854245", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "302500", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "10083.333333333", buttonColor: Color.konruri),
        Conversion(label: "反", value: "1008.3333333333", buttonColor: Color.konruri),
        Conversion(label: "町", value: "100.83333333333", buttonColor: Color.konruri)
    ]
    
    // 平方インチ
    static let fromSquareInch = [
        Conversion(label: "平方ミリメートル(mm2)", value: "645.16", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "6.4516", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "0.00064516", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "6.4516E-6", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "6.4516E-8", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "6.4516E-10", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "0.0069444444444444", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "0.0007716049382716", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "1.5942250790736E-6", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "1.5942250790736E-7", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "6.3769003162943E-7", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "2.4909766860524E-10", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "0.0001951609", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "6.5053633333333E-6", buttonColor: Color.konruri),
        Conversion(label: "反", value: "6.5053633333333E-7", buttonColor: Color.konruri),
        Conversion(label: "町", value: "6.5053633333333E-8", buttonColor: Color.konruri)
    ]
    
    // 平方フィート
    static let fromSquareFeet = [
        Conversion(label: "平方ミリメートル(mm2)", value: "92903.04", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "929.0304", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "0.09290304", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "0.0009290304", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "9.290304E-6", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "9.290304E-8", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "144", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "0.11111111111111", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "0.00022956841138659", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "2.2956841138659E-5", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "9.1827364554637E-5", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.5870064279155E-8", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "0.0281031696", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "0.00093677232", buttonColor: Color.konruri),
        Conversion(label: "反", value: "9.3677232E-5", buttonColor: Color.konruri),
        Conversion(label: "町", value: "9.3677232E-6", buttonColor: Color.konruri)
    ]
    
    // 平方ヤード
    static let fromSquareYard = [
        Conversion(label: "平方ミリメートル(mm2)", value: "836127.36", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "8361.2736", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "0.83612736", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "0.0083612736", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "8.3612736E-5", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "8.3612736E-7", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "1296", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "9", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "0.0020661157024793", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.00020661157024793", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.00082644628099174", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.228305785124E-7", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "0.2529285264", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "0.00843095088", buttonColor: Color.konruri),
        Conversion(label: "反", value: "0.000843095088", buttonColor: Color.konruri),
        Conversion(label: "町", value: "8.43095088E-5", buttonColor: Color.konruri)
    ]
    
    // 平方チェーン
    static let fromSquareChain = [
        Conversion(label: "平方ミリメートル(mm2)", value: "404685642.24", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "4046856.4224", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "404.68564224", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "4.0468564224", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.040468564224", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.00040468564224", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "627264", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "4356", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "484", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.1", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.4", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.00015625", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "122.4174067776", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "4.08058022592", buttonColor: Color.konruri),
        Conversion(label: "反", value: "0.408058022592", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.0408058022592", buttonColor: Color.konruri)
    ]
    
    // エーカー
    static let fromAcre = [
        Conversion(label: "平方ミリメートル(mm2)", value: "4046856422.4", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "40468564.224", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "4046.8564224", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "40.468564224", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.40468564224", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.0040468564224", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "6272640", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "43560", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "4840", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "10", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "4", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.0015625", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "1224.174067776", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "40.8058022592", buttonColor: Color.konruri),
        Conversion(label: "反", value: "4.08058022592", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.408058022592", buttonColor: Color.konruri)
    ]
    
    // ルード
    static let fromRood = [
        Conversion(label: "平方ミリメートル(mm2)", value: "1011714105.6", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "10117141.056", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "1011.7141056", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "10.117141056", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.10117141056", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.0010117141056", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "1568160", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "10890", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "1210", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "2.5", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.25", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.000390625", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "306.043516944", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "10.2014505648", buttonColor: Color.konruri),
        Conversion(label: "反", value: "1.02014505648", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.102014505648", buttonColor: Color.konruri)
    ]
    
    // 平方マイル
    static let fromSquareMile = [
        Conversion(label: "平方ミリメートル(mm2)", value: "2589988110336", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "25899881103.36", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "2589988.110336", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "25899.88110336", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "258.9988110336", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "2.589988110336", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "4014489600", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "27878400", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "3097600", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "6400", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "640", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "2560", buttonColor: Color.smalt),
        Conversion(label: "坪", value: "783471.40337664", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "26115.713445888", buttonColor: Color.konruri),
        Conversion(label: "反", value: "2611.5713445888", buttonColor: Color.konruri),
        Conversion(label: "町", value: "261.15713445888", buttonColor: Color.konruri)
    ]
    
    // 坪
    static let fromTsubo = [
        Conversion(label: "平方ミリメートル(mm2)", value: "3305785.1239669", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "33057.851239669", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "3.3057851239669", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "0.033057851239669", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.00033057851239669", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "3.3057851239669E-6", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "5123.9771901031", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "35.583174931272", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "3.9536861034746", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "0.0081687729410633", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.00081687729410633", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.0032675091764253", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "1.2763707720411E-6", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "0.033333333333333", buttonColor: Color.konruri),
        Conversion(label: "反", value: "0.0033333333333333", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.00033333333333333", buttonColor: Color.konruri)
    ]
    
    // 畝
    static let fromSe = [
        Conversion(label: "平方ミリメートル(mm2)", value: "99173553.719008", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "991735.53719008", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "99.173553719008", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "0.99173553719008", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.0099173553719008", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "9.9173553719008E-5", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "153719.31570309", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "1067.4952479382", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "118.61058310424", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "0.2450631882319", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.02450631882319", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.09802527529276", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "3.8291123161234E-5", buttonColor: Color.konruri),
        Conversion(label: "坪", value: "30", buttonColor: Color.konruri),
        Conversion(label: "反", value: "0.1", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.01", buttonColor: Color.konruri)
    ]
    
    // 反
    static let fromTan = [
        Conversion(label: "平方ミリメートル(mm2)", value: "991735537.19008", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "9917355.3719008", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "991.73553719008", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "9.9173553719008", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.099173553719008", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.00099173553719008", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "1537193.1570309", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "10674.952479382", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "1186.1058310424", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "2.450631882319", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "0.2450631882319", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "0.9802527529276", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.00038291123161234", buttonColor: Color.konruri),
        Conversion(label: "坪", value: "300", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "10", buttonColor: Color.konruri),
        Conversion(label: "町", value: "0.1", buttonColor: Color.konruri)
    ]
    
    // 町
    static let fromChou = [
        Conversion(label: "平方ミリメートル(mm2)", value: "9917355371.9008", buttonColor: Color.asahanada),
        Conversion(label: "平方センチメートル(cm2)", value: "99173553.719008", buttonColor: Color.asahanada),
        Conversion(label: "平方メートル(m2)", value: "9917.3553719008", buttonColor: Color.asahanada),
        Conversion(label: "アール(a)", value: "99.173553719008", buttonColor: Color.asahanada),
        Conversion(label: "ヘクタール(ha)", value: "0.99173553719008", buttonColor: Color.asahanada),
        Conversion(label: "平方キロメートル(km2)", value: "0.0099173553719008", buttonColor: Color.smalt),
        Conversion(label: "平方インチ(sq in)", value: "15371931.570309", buttonColor: Color.smalt),
        Conversion(label: "平方フィート(sq ft)", value: "106749.52479382", buttonColor: Color.smalt),
        Conversion(label: "平方ヤード(sq yd)", value: "11861.058310424", buttonColor: Color.smalt),
        Conversion(label: "平方チェーン(sq ch)", value: "24.50631882319", buttonColor: Color.smalt),
        Conversion(label: "エーカー(ac)", value: "2.450631882319", buttonColor: Color.smalt),
        Conversion(label: "ルード(ro)", value: "9.802527529276", buttonColor: Color.smalt),
        Conversion(label: "平方マイル(sq mi)", value: "0.0038291123161234", buttonColor: Color.konruri),
        Conversion(label: "坪", value: "3000", buttonColor: Color.konruri),
        Conversion(label: "畝", value: "100", buttonColor: Color.konruri),
        Conversion(label: "反", value: "10", buttonColor: Color.konruri)
    ]
}
