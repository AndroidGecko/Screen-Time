//
//  MonitorExtension.swift
//  MonitorExtension
//
//  Created by Tarık Yılıkoğlu on 28.07.2022.
//

import DeviceActivity
import SwiftUI

@main
struct MonitorExtension: DeviceActivityReportExtension {
    
    var body: some DeviceActivityReportScene {
        TodayReport { report in
            return TodayReportView(activityReport: report)
        }
        
        WeeklyReport { report in
            return WeeklyReportView(activityReport: report)
        }
    }
}
