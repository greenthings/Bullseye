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

struct InstructionText_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            InstructionText(text:"Instruction")
            BigNumberText(text:"999")
            SliderLabelText(text:"99")
            LabelText(text: "9")
        }
    }
}

