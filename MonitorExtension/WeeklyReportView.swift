//
//  TotalActivityView.swift
//  myDeviceActivityReportExtension
//
//  Created by Tarık Yılıkoğlu on 7.07.2022.
//

import SwiftUI

struct WeeklyReportView: View {
    var activityReport: ActivityReport = ActivityReport(totalDuration: 20, apps: [], source: "initial")
    
    var body: some View {
        Text("Weekly Report View source: \(activityReport.source)")
        Text(activityReport.totalDuration.stringFromTimeInterval())
    }
}
