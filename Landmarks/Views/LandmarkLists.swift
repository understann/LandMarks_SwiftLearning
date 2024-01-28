//
//  LandmarkLists.swift
//  Landmarks
//
//  Created by Nattapon Howong on 24/1/2567 BE.
//

import SwiftUI

struct LandmarkLists: View{
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View{
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink{
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
    LandmarkLists()
}
