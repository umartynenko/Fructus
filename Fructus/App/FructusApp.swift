//
//  FructusApp.swift
//  Fructus
//
//  Created by Uriy Martynenko on 06.10.2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }   //: WINDOWGROUP
        .onChange(of: scenePhase) { _, newPhase in
            if newPhase == .background {
                isOnboarding = true
            }
        }
    }
}
