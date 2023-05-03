//
//  Utils.swift
//  Screen Time
//
//  Created by Marcin Czech on 03/05/2023.
//

import SwiftUI
import DeviceActivity

class Utils {
    static var filterToday = DeviceActivityFilter(
        segment: .hourly(during: DateInterval(
            start: Calendar.current.startOfDay(for: .now),
            end: .now
        )),
        users: .all,
        devices: .init([.iPhone, .iPad])
    )
    
    static var filterWeekly = DeviceActivityFilter(
        segment: .daily(
            during: Calendar.current.dateInterval(
                of: .weekOfYear, for: .now
            )!
        ),
        users: .all,
        devices: .init([.iPhone, .iPad]))
    
    static var todayContext: DeviceActivityReport.Context = .init(rawValue: "today")
    static var weeklyContext: DeviceActivityReport.Context = .init(rawValue: "weekly")
}
