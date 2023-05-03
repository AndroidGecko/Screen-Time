//
//  Screen_TimeApp.swift
//  Screen Time
//
//  Created by Tarık Yılıkoğlu on 19.07.2022.
//

import SwiftUI
import DeviceActivity
import FamilyControls

@main
struct Screen_TimeApp: App {
    let center = AuthorizationCenter.shared
    
    let tab1 = Tab1View()
    let tab2 = Tab2View()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                VStack {
                    tab1
                }
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle.fill")
                }
                VStack {
                    tab2
                }
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle.fill")
                }
            }.onAppear {
                Task {
                    do {
                        try await center.requestAuthorization(for: FamilyControlsMember.individual)
                    } catch {
                        // Handle the error here.
                    }
                }
            }
        }
    }
}

struct STProgressView: View {
    var body: some View {
        ProgressView {
            Text("Loading")
        }
    }
}
