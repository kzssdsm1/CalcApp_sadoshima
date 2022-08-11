//
//  WeightData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/07.
//

import Foundation
import SwiftUI

struct WeightData {
    static let weights = [femtogram, picogram, nanogram, microgram, milligram, gram, kilogram, ton, grain, dram, ounce, pound, quarter, shortTon, longTon, kan, kin, ryo, monme, carat]
    
    // フェムトグラム
    static let femtogram = Unit(label: "フェムトグラム(fg)", conversions: WeightConversions.fromFemtogram, unit: "fg")
    
    // ピコグラム
    static let picogram = Unit(label: "ピコグラム(pg)", conversions: WeightConversions.fromPicogram, unit: "pg")
    
    // ナノグラム
    static let nanogram = Unit(label: "ナノグラム(ng)", conversions: WeightConversions.fromNanogram, unit: "ng")
    
    // マイクログラム
    static let microgram = Unit(label: "マイクログラム(µg)", conversions: WeightConversions.fromMicrogram, unit: "µg")
    
    // ミリグラム
    static let milligram = Unit(label: "ミリグラム(mg)", conversions: WeightConversions.fromMilligram, unit: "mg")
    
    // グラム
    static let gram = Unit(label: "グラム(g)", conversions: WeightConversions.fromGram, unit: "g")
    
    // キログラム
    static let kilogram = Unit(label: "キログラム(kg)", conversions: WeightConversions.fromKilogram, unit: "kg")
    
    // トン
    static let ton = Unit(label: "トン(t)", conversions: WeightConversions.fromTon, unit: "t")
    
    // グレーン
    static let grain = Unit(label: "グレーン(gr)", conversions: WeightConversions.fromGrain, unit: "gr")
    
    // ドラム
    static let dram = Unit(label: "ドラム(dr)", conversions: WeightConversions.fromDram, unit: "dr")
    
    // オンス
    static let ounce = Unit(label: "オンス(oz)", conversions: WeightConversions.fromOunce, unit: "oz")
    
    // ポンド
    static let pound = Unit(label: "ポンド(lb)", conversions: WeightConversions.fromPound, unit: "lb")
    
    // クォーター
    static let quarter = Unit(label: "クォーター(qr)", conversions: WeightConversions.fromQuarter, unit: "qr")
    
    // ショートトン
    static let shortTon = Unit(label: "ショートトン(sh ton)", conversions: WeightConversions.fromShortTon, unit: "sh ton")
    
    // ロングトン
    static let longTon = Unit(label: "ロングトン(ton)", conversions: WeightConversions.fromLongTon, unit: "ton")
    
    // 貫
    static let kan = Unit(label: "貫", conversions: WeightConversions.fromKan, unit: "貫")
    
    // 斤
    static let kin = Unit(label: "斤", conversions: WeightConversions.fromKin, unit: "斤")
    
    // 両
    static let ryo = Unit(label: "両", conversions: WeightConversions.fromRyo, unit: "両")
    
    // 匁
    static let monme = Unit(label: "匁", conversions: WeightConversions.fromMonme, unit: "匁")
    
    // カラット
    static let carat = Unit(label: "カラット(kt)", conversions: WeightConversions.fromCarat, unit: "kt")
}
