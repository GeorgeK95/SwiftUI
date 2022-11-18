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
        Challenge4()
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
        ContentView()
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
