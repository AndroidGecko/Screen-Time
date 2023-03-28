//
//  ContentView.swift
//  TestDeviceActivity2
//
//  Created by Tarık Yılıkoğlu on 6.07.2022.
//

import SwiftUI
import DeviceActivity
import RiveRuntime

struct ChartView: View {

    @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")
    @State private var filter = DeviceActivityFilter(
        segment: .daily(
            during: Calendar.current.dateInterval(
               of: .day, for: .now
            )!
        ),
        users: .all,
        devices: .init([.iPhone, .iPad])
    )
    
    let rive = RiveViewModel(fileName: "sample")

    var body: some View {
        VStack(spacing: 10) {
            Text("Rive View in Screen Time Extension")
            DeviceActivityReport(context, filter: filter)
            Text("Regular Rive View")
            rive.view()
                .frame(width: 100, height: 100)
        }
    }
}


