//
//  DetailView.swift
//  DemoApp
//
//  Created by MG24 on 24.11.22.
//

import SwiftUI

struct DetailView: View {
    let track: Track
    
    var body: some View {
        ZStack {
            track.gradient
                .ignoresSafeArea()
            
            VStack {
                Text(track.title)
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text(track.artist)
                    .font(.title)
                    .fontWeight(.semibold)
                
                track.thumbnail
                    .resizable()
                    .scaledToFit()
                    .padding(50)
            }
            .foregroundColor(.white)
        }
    }
}
