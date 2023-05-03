//
//  ContentView.swift
//  TestDeviceActivity2
//
//  Created by Tarık Yılıkoğlu on 6.07.2022.
//

import SwiftUI
import DeviceActivity

struct Tab2View: View {
    var body: some View {
        VStack {
            Text("----Report Start------")
            DeviceActivityReport(Utils.weeklyContext, filter: Utils.filterWeekly)
            Text("----Report End------")
        }
    }
}
