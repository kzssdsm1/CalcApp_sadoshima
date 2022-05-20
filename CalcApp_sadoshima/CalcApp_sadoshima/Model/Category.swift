//
//  Category.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/01/28.
//

import Foundation
import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let label: String
    let units: [Unit]
    let buttonColor: Color
}

