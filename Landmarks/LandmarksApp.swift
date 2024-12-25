//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Cyril Kardash on 17.12.2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
