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
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
        
    }
    
}

struct HitMeButton: View{
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View{
        Button(action: {
            print("It is worked")
            self.alertIsVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.clear]), startPoint: .top, endPoint: .bottom)
                
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white,lineWidth: 2.0)
        )
        .alert(isPresented: $alertIsVisible,
               content: {
                let roundedVaule: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("THE SLIDERS VALUE IS"), message: Text("You scored \(roundedVaule)." + "You scored \(self.game.point(sldierValue: roundedVaule)) points this round"), dismissButton: .default(Text("Start New Round")))
                
               })
        
    }
}

struct SliderView: View{
    @Binding var sliderValue: Double
    var body: some View{
        HStack {
            SliderLabelText(text: "1")
            Slider(value:self.$sliderValue, in:1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()
        .foregroundColor(Color("TextColor"))
    }
}

struct InstructionView: View{
    @Binding var game:Game
    var body: some View{
        InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        BigNumberText(text:String(game.target))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
        
    }
}

