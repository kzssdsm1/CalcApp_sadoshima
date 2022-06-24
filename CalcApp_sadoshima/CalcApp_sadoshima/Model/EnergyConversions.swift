//
//  EnergyConversions.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/07/20.
//

import Foundation
import SwiftUI

struct EnergyConversions {
    // ジュール
    static let fromJoule = [
        Conversion(label: "キロジュール(kJ)", value: "0.001", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "1.0E-6", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "6.2415093418967E+18", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "10000000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "23.730360404232", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "0.73756214927727", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "0.00094781712031332", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "0.00094845141479728", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "0.23900573613767", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "3.9370078740157E-14", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "0.2388458966275", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.0002388458966275", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "2.7777777777778E-7", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "2.3900573613767E-10", buttonColor: Color.violet, unit: "t")
    ]
    
    // キロジュール
    static let fromKilojoule = [
        Conversion(label: "ジュール(J)", value: "1000", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "メガジュール(MJ)", value: "0.001", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "6.2415093418967E+21", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "10000000000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "23730.360404232", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "737.56214927727", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "0.94781712031332", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "0.94845141479728", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "239.00573613767", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "0.23900573613767", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "238.8458966275", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.2388458966275", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "0.00027777777777778", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "2.3900573613767E-7", buttonColor: Color.violet, unit: "t")
    ]
    
    // メガジュール
    static let fromMegajoule = [
        Conversion(label: "ジュール(J)", value: "1000000", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "1000", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "電子ボルト(eV)", value: "6.2415093418967E+24", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "10000000000000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "23730360.404232", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "737562.14927727", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "947.81712031332", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "948.45141479728", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "239005.73613767", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "239.00573613767", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "238845.8966275", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "238.8458966275", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "0.27777777777778", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "0.00023900573613767", buttonColor: Color.violet, unit: "t")
    ]
    
    // 電子ボルト
    static let fromElectronVolt = [
        Conversion(label: "ジュール(J)", value: "1.60217656535E-19", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "1.60217656535E-22", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "1.60217656535E-25", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "エルグ(erg)", value: "1.60217656535E-12", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "3.802022732697E-18", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "1.1817047910612E-19", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "1.5185703784035E-22", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "1.5195866301612E-22", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "3.82929389424E-20", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "3.82929389424E-23", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "3.8267329830658E-20", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "3.8267329830658E-23", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "4.4504904593056E-26", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "3.82929389424E-29", buttonColor: Color.violet, unit: "t")
    ]
    
    // エルグ
    static let fromErg = [
        Conversion(label: "ジュール(J)", value: "1.0E-7", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "1.0E-10", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "1.0E-13", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "624150934189.67", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "2.3730360404232E-6", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "7.3756214927727E-8", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "9.4781712031332E-11", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "9.4845141479728E-11", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "2.3900573613767E-8", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "2.3900573613767E-11", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "2.388458966275E-8", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "2.388458966275E-11", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "2.7777777777778E-14", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "2.3900573613767E-17", buttonColor: Color.violet, unit: "t")
    ]
    
    // フィート・パウンダル
    static let fromFootPoundal = [
        Conversion(label: "ジュール(J)", value: "0.042140110093805", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "4.2140110093805E-5", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "4.2140110093805E-8", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.6301789081904E+17", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "421401.10093805", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "0.031080950171567", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "3.9941117798796E-5", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "3.9967847038182E-5", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "0.010071728033892", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "1.0071728033892E-5", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "0.010064992379336", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "1.0064992379336E-5", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "1.1705586137168E-8", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "1.0071728033892E-11", buttonColor: Color.violet, unit: "t")
    ]
    
    // フィート・重量ポンド
    static let fromFootPoundForce = [
        Conversion(label: "ジュール(J)", value: "1.3558179483314", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "0.0013558179483314", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "1.3558179483314E-6", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "8.4623503904217E+18", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "13558179.483314", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "32.17404855643", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "0.0012850674634566", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "0.0012859274513025", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "0.32404826680961", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "0.00032404826680961", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "0.32383155353287", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.00032383155353287", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "3.7661609675872E-7", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "3.2404826680961E-10", buttonColor: Color.violet, unit: "t")
    ]
    
    // 国際蒸気表英熱量
    static let fromITBritishThermalUnit = [
        Conversion(label: "ジュール(J)", value: "1055.05585262", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "1.05505585262", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "0.00105505585262", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "6.5851409603505E+21", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "10550558526.2", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "25036.855629267", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "778.16926226596", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "1.0006692161076", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "252.1644007218", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "0.2521644007218", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "251.99576111111", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.25199576111111", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "0.00029307107017222", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "2.521644007218E-7", buttonColor: Color.violet, unit: "t")
    ]
    
    // 熱力学英熱量
    static let fromThermochemicalBritishThermalUnit = [
        Conversion(label: "ジュール(J)", value: "1054.35026444", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "1.05435026444", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "0.00105435026444", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "6.5807370251335E+21", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "10543502644.4", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "25020.111767458", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "777.64884713142", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "0.99933123144311", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学カロリー(cal th)", value: "251.99576109943", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "0.25199576109943", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "251.82723426961", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.25182723426961", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "0.00029287507345556", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "2.5199576109943E-7", buttonColor: Color.violet, unit: "t")
    ]
    
    // 熱力学カロリー
    static let fromThermochemicalCalorie = [
        Conversion(label: "ジュール(J)", value: "4.184", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "0.004184", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "4.184E-6", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.6114475086496E+19", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "41840000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "99.287827931306", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "3.0859600325761", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "0.0039656668313909", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "0.0039683207195118", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "0.001", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "0.99933123148944", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.00099933123148944", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "1.1622222222222E-6", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "1.0E-9", buttonColor: Color.violet, unit: "t")
    ]
    
    // 熱力学キロカロリー
    static let fromThermochemicalKilocalorie = [
        Conversion(label: "ジュール(J)", value: "4184", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "4.184", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "0.004184", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.6114475086496E+22", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "41840000000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "99287.827931306", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "3085.9600325761", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "3.9656668313909", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "3.9683207195118", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "1000", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "999.33123148944", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.99933123148944", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "0.0011622222222222", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "1.0E-6", buttonColor: Color.violet, unit: "t")
    ]
    
    // 国際蒸気表カロリー
    static let fromInternationalSteamTableCalorie = [
        Conversion(label: "ジュール(J)", value: "4.1868", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "0.0041868", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "4.1868E-6", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.6131951312653E+19", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "41868000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "99.354272940438", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "3.0880252065941", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "0.0039683207193278", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "0.0039709763834732", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "1.0006692160612", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "0.0010006692160612", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "0.001", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "1.163E-6", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "1.0006692160612E-9", buttonColor: Color.violet, unit: "t")
    ]
    
    // 国際蒸気表キロカロリー
    static let fromInternationalSteamTableKilocalorie = [
        Conversion(label: "ジュール(J)", value: "4186.8", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "4.1868", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "0.0041868", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.6131951312653E+22", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "41868000000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "99354.272940438", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "3088.0252065941", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "3.9683207193278", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "3.9709763834732", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "1000.6692160612", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "1.0006692160612", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "1000", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "キロワット時(kWh)", value: "0.001163", buttonColor: Color.darkViolet, unit: "kWh"),
        Conversion(label: "TNT換算トン(t)", value: "1.0006692160612E-6", buttonColor: Color.violet, unit: "t")
    ]
    
    // キロワット時
    static let fromKilowattHour = [
        Conversion(label: "ジュール(J)", value: "3600000", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "3600", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "3.6", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.2469433630828E+25", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "36000000000000", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "85429297.455235", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "2655223.7373982", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "3412.1416331279", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "3414.4250932702", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "860420.6500956", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "860.4206500956", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "859845.2ƒ2785899", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "859.84522785899", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "TNT換算トン(t)", value: "0.0008604206500956", buttonColor: Color.violet, unit: "t")
    ]
    
    // TNT換算トン
    static let fromTNTEquivalentTon = [
        Conversion(label: "ジュール(J)", value: "4184000000", buttonColor: Color.asahanada, unit: "J"),
        Conversion(label: "キロジュール(kJ)", value: "4184000", buttonColor: Color.asahanada, unit: "kJ"),
        Conversion(label: "メガジュール(MJ)", value: "4184", buttonColor: Color.asahanada, unit: "MJ"),
        Conversion(label: "電子ボルト(eV)", value: "2.6114475086496E+28", buttonColor: Color.smalt, unit: "eV"),
        Conversion(label: "エルグ(erg)", value: "4.184E+16", buttonColor: Color.konruri, unit: "erg"),
        Conversion(label: "フィート・パウンダル(ft-pdl)", value: "99287827931.306", buttonColor: Color.lightnessGreen, unit: "ft-pdl"),
        Conversion(label: "フィート・重量ポンド(ft⋅lbf)", value: "3085960032.5761", buttonColor: Color.lightnessGreen, unit: "ft⋅lbf"),
        Conversion(label: "国際蒸気表英熱量(Btu IT)", value: "3965666.8313909", buttonColor: Color.lightnessGreen, unit: "Btu IT"),
        Conversion(label: "熱力学英熱量(Btu th)", value: "3968320.7195118", buttonColor: Color.lightnessGreen, unit: "Btu th"),
        Conversion(label: "熱力学カロリー(cal th)", value: "1000000000", buttonColor: Color.moegi, unit: "cal th"),
        Conversion(label: "熱力学キロカロリー(kcal th)", value: "1000000", buttonColor: Color.moegi, unit: "kcal th"),
        Conversion(label: "国際蒸気表カロリー(cal IT)", value: "999331231.48944", buttonColor: Color.moegi, unit: "cal IT"),
        Conversion(label: "国際蒸気表キロカロリー(kcal IT)", value: "999331.23148944", buttonColor: Color.moegi, unit: "kcal IT"),
        Conversion(label: "キロワット時(kWh)", value: "1162.2222222222", buttonColor: Color.darkViolet, unit: "kWh")
    ]
}
