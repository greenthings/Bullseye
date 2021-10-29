//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/29.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
                LabelView()
                RowView(index: 1, score: 1, date: Date())
            }
        }
    }
}

struct RowView: View {
    var index: Int
    var score: Int
    var date: Date
    
    var body: some View {
        HStack{
            RoundedTextView(text:String(index))
            Spacer()
            ScoreText(score: score)
                .frame(width:Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            DateText(date: date)
                .frame(width:Constants.Leaderboard.leaderboardDateColWidth)
        }
        .background(
            RoundedRectangle(cornerRadius:.infinity)
                .strokeBorder(Color("LeaderboardRowColor"),lineWidth:Constants.General.strokeWidth)
        )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth:Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

struct HeaderView: View{
    @Environment(\.verticalSizeClass) var
        verticalSizeClass
    @Environment(\.horizontalSizeClass) var
        horizontalSizeClass
    
    var body: some View{
        ZStack {
            HStack{
            if verticalSizeClass == .regular && horizontalSizeClass == .compact{
                BigBoldText(text: "Leaderboard")
                    .padding(.leading)
                Spacer()
            }else{
                BigBoldText(text: "Leaderboard")
                    .padding()

             }
            }
            HStack{
            Spacer()
                Button(action: {}) {
                    RoundedImageViewFilled(systemName: "xmark")
                        .padding(.trailing)
                }
            }
         
        }
    }
}

struct LabelView: View{
    var body: some View{
        HStack{
            //RoundedTextview width
            Spacer()
                .frame(width:Constants.General.roundedViewLength)
            Spacer()
            LabelText(text: "Score")
                .frame(width:Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            LabelText(text: "Date")
                .frame(width:Constants.Leaderboard.leaderboardDateColWidth)
        }
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth:Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
        LeaderboardView()
            .previewLayout(.fixed(width: 568, height: 320))
        LeaderboardView()
            .preferredColorScheme(.dark)
        LeaderboardView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
