//
//  WeightData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/07.
//

import Foundation
import SwiftUI

struct WeightData {
    static let weights = [femtogram, picogram, nanogram, microgram, milligram, gram, kilogram, ton, grain, dram, ounce, pound, quarter, shortTon, longTon, kan, kin, ryo, monme, karat]
    
    // フェムトグラム
    static let femtogram = Unit(label: "フェムトグラム(fg)", conversions: WeightConversions.fromFemtogram)
    
    // ピコグラム
    static let picogram = Unit(label: "ピコグラム(pg)", conversions: WeightConversions.fromPicogram)
    
    // ナノグラム
    static let nanogram = Unit(label: "ナノグラム(ng)", conversions: WeightConversions.fromNanogram)
    
    // マイクログラム
    static let microgram = Unit(label: "マイクログラム(µg)", conversions: WeightConversions.fromMicrogram)
    
    // ミリグラム
    static let milligram = Unit(label: "ミリグラム(mg)", conversions: WeightConversions.fromMilligram)
    
    // グラム
    static let gram = Unit(label: "グラム(g)", conversions: WeightConversions.fromGram)
    
    // キログラム
    static let kilogram = Unit(label: "キログラム(kg)", conversions: WeightConversions.fromKilogram)
    
    // トン
    static let ton = Unit(label: "トン(t)", conversions: WeightConversions.fromTon)
    
    // グレーン
    static let grain = Unit(label: "グレーン(gr)", conversions: WeightConversions.fromGrain)
    
    // ドラム
    static let dram = Unit(label: "ドラム(dr)", conversions: WeightConversions.fromDram)
    
    // オンス
    static let ounce = Unit(label: "オンス(oz)", conversions: WeightConversions.fromOunce)
    
    // ポンド
    static let pound = Unit(label: "ポンド(lb)", conversions: WeightConversions.fromPound)
    
    // クォーター
    static let quarter = Unit(label: "クォーター(qr)", conversions: WeightConversions.fromQuarter)
    
    // ショートトン
    static let shortTon = Unit(label: "ショートトン(sh ton)", conversions: WeightConversions.fromShortTon)
    
    // ロングトン
    static let longTon = Unit(label: "ロングトン(ton)", conversions: WeightConversions.fromLongTon)
    
    // 貫
    static let kan = Unit(label: "貫", conversions: WeightConversions.fromKan)
    
    // 斤
    static let kin = Unit(label: "斤", conversions: WeightConversions.fromKin)
    
    // 両
    static let ryo = Unit(label: "両", conversions: WeightConversions.fromRyo)
    
    // 匁
    static let monme = Unit(label: "匁", conversions: WeightConversions.fromMonme)
    
    // カラット
    static let karat = Unit(label: "カラット(kt)", conversions: WeightConversions.fromKarat)
}
