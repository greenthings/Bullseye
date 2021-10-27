//
//  PointView.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/27.
//

import SwiftUI

struct PointView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.point(sldierValue: roundedValue)
        
        VStack(spacing: 10){
            InstructionText(text: "The slider's vaule is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You Scored \(points) Points\n 🎉🎉🎉")
            Button(action: {
                alertIsVisible = false
                game.startNewRound(points: points)
            }) {
                ButtonText(text: "Start New Round")
            }
        }
            .padding()
            .frame(maxWidth:300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21.0)
            .shadow(radius:10,x: 5,y:5)
    }
}

struct PointView_Previews: PreviewProvider {
    static private var alertIsVisble = Binding.constant(false)
    static private var sliderVaule = Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    
    static var previews: some View {
        PointView(alertIsVisible: alertIsVisble, sliderValue: sliderVaule, game: game)
        PointView(alertIsVisible: alertIsVisble, sliderValue: sliderVaule, game: game)
            .previewLayout(.fixed(width: 568, height: 320))
        PointView(alertIsVisible: alertIsVisble, sliderValue: sliderVaule, game: game)
            .preferredColorScheme(.dark)
        PointView(alertIsVisible: alertIsVisble, sliderValue: sliderVaule, game: game)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
