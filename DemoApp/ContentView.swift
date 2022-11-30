//
//  ContentView.swift
//  DemoApp
//
//  Created by MG24 on 18.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        Challenge1()
        //        Challenge2()
        //        Challenge3()
        //        Challenge4()
        //        Challenge5()
        //        Challenge7()
        Challenge7()
    }
}

struct Challenge7: View {
    let mix = MeowMix()
    @State private var showMessage = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0.0) {
                MeowMixHeader()
                    .padding()
                    .onTapGesture {
                        showMessage = true
                    }
                    .popover(isPresented: $showMessage, content: {
                        MessagePopover()
                    })
                
                Divider().padding()
                
                List(mix.tracks) { track in
                    NavigationLink(
                        destination: DetailView(track: track),
                        label: {
                            TrackRow(track: track)
                        })
                }
                
                FeaturedCats(artists: mix.tracks.map(\.artist))
                    .padding(.vertical)
                    .background(Color.gray.opacity(0.2))
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Challenge6: View {
    let weather = Weather()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            CurrentConditions()
            
            Divider()
            
            HStack {
                ForEach(weather.hourlyForecast, id: \.hour) { forecast in
                    Spacer()
                    HourlyForecast(forecast: forecast)
                    Spacer()
                }
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(
            .blue
        )
    }
}

struct Challenge5: View {
    let mix = MeowMix()
    
    var body: some View {
        VStack {
            MeowMixHeader().padding()
            
            Divider().padding()
            
            //            List(mix.tracks, id: \.title) { track in
            //                TrackRow(track: track)
            //            }
            
            List(mix.tracks) { track in
                TrackRow(track: track)
            }
            
            FeaturedCats(artists: mix.tracks.map { $0.artist })
        }
        
    }
}

struct Challenge4: View {
    @State var text = ""
    @State var pickedColor = Color.green
    
    var body: some View {
        VStack {
            TextField(
                "User name (email address)",
                text: $text
            )
            ColorPicker("Select color", selection: $pickedColor)
            VStack {
                Image(systemName: "sun.max.fill")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                Text(text)
            }
            .padding()
            .background(pickedColor)
            .cornerRadius(15)
        }
    }
}

struct Challenge3: View {
    @State var pickedColor = Color.green
    @State var selectedOpacity = 0.5
    
    var body: some View {
        VStack {
            CustomSliderView(pickedColor: $pickedColor, selectedOpacity: $selectedOpacity)
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding()
                .foregroundColor(.white)
                .background(pickedColor)
                .cornerRadius(50)
                .opacity(selectedOpacity)
        }
    }
}

struct Challenge2: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text("Sunny")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            HStack() {
                Text("H: 61 L: 44")
                    .foregroundColor(.white)
                    .opacity(0.7)
            }
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.white, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
    }
}

struct Challenge1: View {
    var body: some View {
        Image("cat")
            .resizable()
            .scaledToFit()
            .shadow(radius: 10)
            .border(.green, width: 5)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}


struct CustomSliderView: View {
    @Binding var pickedColor: Color
    @Binding var selectedOpacity: Double
    
    var body: some View {
        Slider(value: $selectedOpacity, in: 0...1)
            .accentColor(pickedColor)
        ColorPicker("Color picker", selection: $pickedColor)
    }
}
