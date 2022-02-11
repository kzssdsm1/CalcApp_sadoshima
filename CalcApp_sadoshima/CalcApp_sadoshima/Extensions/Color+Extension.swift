//
//  Color+Extension.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/21.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    static let bungy = Color(hex: "40317e")
    static let violet = Color(hex: "661461")
    static let myrtleGreen = Color(hex: "317e67")
    static let darkPink = Color(hex: "7e3148")
    static let offGreen = Color(hex: "6f7e31")
    static let aozumi = Color(hex: "293040")
    static let konruri = Color(hex: "143866")
    static let smalt = Color(hex: "1C588C")
    static let asahanada = Color(hex: "3d708f")
    static let fukagawanezumi = Color(hex: "A6A48F")
    static let lightnessGreen = Color(hex: "146166")
    static let offWhite = Color(hex: "d8d8d8")
    static let moegi = Color(hex: "616614")
    static let darkViolet = Color(hex: "421466")
    static let darkGreen = Color(hex: "1e472e")
}
