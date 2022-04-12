//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Denis Valshchikov on 11.04.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
