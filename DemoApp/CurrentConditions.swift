//
//  CurrentConditions.swift
//  DemoApp
//
//  Created by MG24 on 24.11.22.
//

import SwiftUI

struct CurrentConditions: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading) {
                Text("Cupertino").font(.title3)
                Text("63°").font(.largeTitle)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Image(systemName: "sun.max.fill").renderingMode(.original)
                
                Text("Sunny")
                Text("H:68° L:42°")
            }
        }
    }
}

struct CurrentConditions_Previews: PreviewProvider {
    static var previews: some View {
        CurrentConditions().previewLayout(.sizeThatFits)
    }
}
