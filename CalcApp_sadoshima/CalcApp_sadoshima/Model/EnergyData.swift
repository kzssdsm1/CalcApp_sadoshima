//
//  EnergyData.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/21.
//

import Foundation

struct EnergyData {
    static let energys = [joule, kilojoule, megajoule, electronVolt, erg, footPoundal, footPoundForce, itBritishThermalUnit, thermochemicalBritishThermalUnit, thermochemicalCalorie, thermochemicalKilocalorie, internationalSteamTableCalorie, internationalSteamTableKilocalorie, kilowattHour, tntEquivalentTon]
    
    // ジュール
    static let joule = Unit(label: "ジュール(J)", conversions: EnergyConversions.fromJoule, unit: "J")
    
    // キロジュール
    static let kilojoule = Unit(label: "キロジュール(kJ)", conversions: EnergyConversions.fromKilojoule, unit: "kJ")
    
    // メガジュール
    static let megajoule = Unit(label: "メガジュール(MJ)", conversions: EnergyConversions.fromMegajoule, unit: "MJ")
    
    // 電子ボルト
    static let electronVolt = Unit(label: "電子ボルト(eV)", conversions: EnergyConversions.fromElectronVolt, unit: "eV")
    
    // エルグ
    static let erg = Unit(label: "エルグ(erg)", conversions: EnergyConversions.fromErg, unit: "erg")
    
    // フィート・パウンダル
    static let footPoundal = Unit(label: "フィート・パウンダル(ft-pdl)", conversions: EnergyConversions.fromFootPoundal, unit: "ft-pdl")
    
    // フィート・重量ポンド
    static let footPoundForce = Unit(label: "フィート・重量ポンド(ft⋅lbf)", conversions: EnergyConversions.fromFootPoundForce, unit: "ft⋅lbf")
    
    // 国際蒸気表英熱量
    static let itBritishThermalUnit = Unit(label: "国際蒸気表英熱量(Btu IT)", conversions: EnergyConversions.fromITBritishThermalUnit, unit: "Btu IT")
    
    // 熱力学英熱量
    static let thermochemicalBritishThermalUnit = Unit(label: "熱力学英熱量(Btu th)", conversions: EnergyConversions.fromThermochemicalBritishThermalUnit, unit: "Btu th")
    
    // 熱力学カロリー
    static let thermochemicalCalorie = Unit(label: "熱力学カロリー(cal th)", conversions: EnergyConversions.fromThermochemicalCalorie, unit: "cal th")
    
    // 熱力学キロカロリー
    static let thermochemicalKilocalorie = Unit(label: "熱力学キロカロリー(kcal th)", conversions: EnergyConversions.fromThermochemicalKilocalorie, unit: "kcal th")
    
    // 国際蒸気表カロリー
    static let internationalSteamTableCalorie = Unit(label: "国際蒸気表カロリー(cal IT)", conversions: EnergyConversions.fromInternationalSteamTableCalorie, unit: "cal IT")
    
    // 国際蒸気表キロカロリー
    static let internationalSteamTableKilocalorie = Unit(label: "国際蒸気表キロカロリー(kcal IT)", conversions: EnergyConversions.fromInternationalSteamTableKilocalorie, unit: "kcal IT")
    
    // キロワット時
    static let kilowattHour = Unit(label: "キロワット時(kWh)", conversions: EnergyConversions.fromKilowattHour, unit: "kWh")
    
    // TNT換算トン
    static let tntEquivalentTon = Unit(label: "TNT換算トン(t)", conversions: EnergyConversions.fromTNTEquivalentTon, unit: "t")
}
