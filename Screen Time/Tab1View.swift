//
//  ContentView.swift
//  TestDeviceActivity2
//
//  Created by Tarık Yılıkoğlu on 6.07.2022.
//

import SwiftUI
import DeviceActivity

struct Tab1View: View {
    var body: some View {
        VStack {
            Text("----Report Start------")
            DeviceActivityReport(Utils.todayContext, filter: Utils.filterToday)
            Text("----Report End------")
        }
    }
}
