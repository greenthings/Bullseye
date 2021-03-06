//
//  BackgroundView.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View{
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(Color("BackgroundColor"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct TopView: View {
    @Binding var game: Game
    var body: some View {
        HStack{
            RoundedImageViewStroked(systemName:
                                        "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}

struct NumberView: View{
    var title: String
    var text: String
    
    var body: some View{
        VStack(spacing:5.0){
            LabelText(text:title.uppercased())
            RoundRectTextView(text: text)
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack{
            NumberView(title:"Score", text: String(game.score))
            Spacer()
            NumberView(title:"Round", text: String(game.round))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
