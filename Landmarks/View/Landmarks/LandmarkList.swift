//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Cyril Kardash on 17.12.2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        showFavoriteOnly ? modelData.landmarks.filter(\..isFavorite) : modelData.landmarks
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
