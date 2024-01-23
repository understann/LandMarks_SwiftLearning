//
//  ContentView.swift
//  Landmarks
//
//  Created by Nattapon Howong on 23/1/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
            MapView().frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("Bangkok")
                    .font(.title)
                    .foregroundColor(.black).bold()
                HStack {
                    Text("Siam Walking Steet")
                    Spacer()
                    Text("Patumwan")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
