//
//  LandmarkLists.swift
//  Landmarks
//
//  Created by Nattapon Howong on 24/1/2567 BE.
//

import SwiftUI

struct LandmarkLists: View{
    var body: some View{
        NavigationSplitView {
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkLists()
}
