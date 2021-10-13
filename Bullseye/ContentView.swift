//
//  ContentView.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
            VStack {
                Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                    .padding()
                Text("Some")
                HStack {
                    Text("1")
                    Slider(value: .constant(50), in:1.0...100.0)
                    Text("100")
                }
                Button(action: {}) {
                    Text("Hit me")
                }
            }
           
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
