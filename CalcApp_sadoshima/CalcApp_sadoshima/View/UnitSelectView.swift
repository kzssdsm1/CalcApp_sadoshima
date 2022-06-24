//
//  UnitSelectView.swift
//  CalcApp_sadoshima
//
//  Created by 佐渡島和志 on 2022/02/11.
//

import SwiftUI

struct UnitSelectView: View {
    @State private var selection: Category?
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    private let categories = [
        Category(label: "長さ", units: LengthData.lengths, buttonColor: Color.asahanada),
        Category(label: "重さ", units: WeightData.weights, buttonColor: Color.smalt),
        Category(label: "面積", units: AreaData.areas, buttonColor: Color.konruri),
        Category(label: "体積", units: VolumeData.volumes, buttonColor: Color.lightnessGreen),
        Category(label: "速度", units: VelocityData.velocitys, buttonColor: Color.moegi),
        Category(label: "時間", units: TimeData.times, buttonColor: Color.darkViolet),
        Category(label: "エネルギー等", units: EnergyData.energys, buttonColor: Color.violet),
        Category(label: "圧力", units: PressureData.pressures, buttonColor: Color.redViolet),
        Category(label: "角度", units: AngleData.angles, buttonColor: Color.vividGreen),
        Category(label: "温度", units: TemperatureData.temperatures, buttonColor: Color.offViolet),
        Category(label: "力", units: ForceData.forces, buttonColor: Color.offBlue),
        Category(label: "加速度", units: AccelerationData.accelerations, buttonColor: Color.wine)
    ]
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                if let item = selection {
                    ConverterView(parentSelection: $selection, category: item)
                        .transition(AnyTransition.opacity.combined(with: .slide))
                }
                
                VStack(spacing: 0) {
                    HStack {
                        Text("カテゴリーを選択")
                            .font(.system(size: proxy.size.width * 0.05, weight: .medium))
                            .foregroundColor(Color.offWhite)
                            .padding()
                        
                        Spacer(minLength: 0)
                    } // HStack
                    
                    Spacer(minLength: 0)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(categories) { item in
                            Button(action: {
                                withAnimation {
                                    selection = item
                                }
                            }, label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(item.buttonColor)
                                    .frame(width: proxy.size.width * 0.26, height: screenHeight * 0.07)
                                    .overlay(
                                        Text(item.label)
                                            .font(.system(size: proxy.size.width * 0.035, weight: .medium))
                                            .minimumScaleFactor(0.7)
                                            .foregroundColor(.offWhite)
                                    )
                            })
                                .padding(proxy.size.width * 0.01)
                        } // ForEach
                    } // LazyVGrid
                    
                    Spacer(minLength: 0)
                } // VStack
                .opacity(selection != nil ? 0 : 1)
            } // ZStack
            .frame(maxWidth: .infinity, maxHeight: screenHeight * 0.56)
            .background(Color.aozumi.edgesIgnoringSafeArea(.all))
        } // GeometryReader
    }
}
