//
//  ContentView.swift
//  Landmarks
//
//  Created by Cyril Kardash on 17.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
