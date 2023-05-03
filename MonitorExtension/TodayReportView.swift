//
//  TotalActivityView.swift
//  myDeviceActivityReportExtension
//
//  Created by Tarık Yılıkoğlu on 7.07.2022.
//

import SwiftUI

struct TodayReportView: View {
    
    var activityReport: ActivityReport = ActivityReport(totalDuration: 1000, apps: [], source: "initial")
    
    var body: some View {
        VStack {
            Text("Today Report View source: \(activityReport.source)")
            Spacer(minLength: 10)
            Text(activityReport.totalDuration.stringFromTimeInterval())
            List(activityReport.apps) { app in
                ListRow(eachApp: app)
            }
        }
    }
}

struct ListRow: View {
    var eachApp: AppDeviceActivity
    var body: some View {
        HStack {
            Text(eachApp.displayName)
            Spacer()
            Text(eachApp.id)
            Spacer()
            Text("\(eachApp.numberOfPickups)")
            Spacer()
            Text(String(eachApp.duration.formatted()))
        }
    }
}
