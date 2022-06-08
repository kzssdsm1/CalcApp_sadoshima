//
//  RootView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/06/08.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            HomeView_iPhone()
        } else if UIDevice.current.userInterfaceIdiom == .pad {
            HomeView_iPad()
        }
    }
}
