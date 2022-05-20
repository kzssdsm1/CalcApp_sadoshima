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
    let unit: String
}
