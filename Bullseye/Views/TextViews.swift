//
//  InstructionText.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/20.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View{
        Text(String(text))
            .fontWeight(.black)
            .kerning(-1.0)
            .font(.largeTitle)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View{
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .fontWeight(.black)
            .frame(width: 35.0)
    }
}


struct LabelText: View{
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

struct BodyText: View{
    var text: String
    var body: some View{
        Text(text)
            // font - weight is 600 in css
            // It is equivalent to semibold
            .fontWeight(.semibold)
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View{
    var text: String
    var body: some View{
        Text(text)
            .padding()
            .font(.headline
            .bold())
            .frame(maxWidth:.infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(Color.white)
            .cornerRadius(12.0)
    }
}


struct ScoreText: View{
    var score: Int
    var body: some View{
        Text(String(score))
            .bold()
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}
struct DateText: View{
    var date:Date
    var body: some View{
        Text(date,style: .time)
            .bold()
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText: View{
    let text: String
    var body: some View{
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}


struct InstructionText_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            InstructionText(text:"Instruction")
            BigNumberText(text:"999")
            SliderLabelText(text:"99")
            LabelText(text: "9")
            BodyText(text: "you scored 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 459)
            DateText(date:Date())
            BigBoldText(text:"Leaderboard")
        }
        .padding()
    }
}

