//
//  ContentView.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private  var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
              VStack {
                Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
            Text(String(game.target))
                    .fontWeight(.black)
                    .kerning(-1.0)
                    .font(.largeTitle)
                HStack {
                    Text("1")
                        .bold()
                        .fontWeight(.black)
                    Slider(value:self.$sliderValue, in:1.0...100.0)
                    Text("100")
                        .bold()
                        .fontWeight(.black)
                }
                Button(action: {
                    print("It is worked")
                    self.alertIsVisible = true
                }) {
                    Text("Hit me")
                }.alert(isPresented: $alertIsVisible,
                    content: {
                        var roundedVaule: Int = Int(self.sliderValue.rounded())
                        return Alert(title: Text("THE SLIDERS VALUE IS"), message: Text("You scored \(roundedVaule)." + "You scored \(self.game.point(sldierValue: roundedVaule)) points this round"), dismissButton: .default(Text("Start New Round")))
                    
                })
              
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
