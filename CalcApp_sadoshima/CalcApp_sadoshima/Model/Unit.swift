//
//  Unit.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/28.
//

import Foundation
import SwiftUI

struct Unit: Identifiable {
    let id = UUID()
    let label: String
    let conversions: [[Conversion]]
}

struct UnitContext {
    // 重さ
    static let weight = Unit(
        label: "重さ",
        conversions: [
            ConversionContext.fromMilligram,
            ConversionContext.fromGram,
            ConversionContext.fromKilogram,
            ConversionContext.fromTon,
            ConversionContext.fromGrain,
            ConversionContext.fromDram,
            ConversionContext.fromOunce,
            ConversionContext.fromPound,
            ConversionContext.fromQuarter,
            ConversionContext.fromShortTon,
            ConversionContext.fromLongTon,
            ConversionContext.fromKan,
            ConversionContext.fromKin,
            ConversionContext.fromRyo,
            ConversionContext.fromMonme,
            ConversionContext.fromKarat
        ]
    )
}
