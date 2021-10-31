//
//  Game.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/17.
//

import Foundation


struct LeaderboardEntry {
    let score: Int
    let date: Date
}

struct Game {
    var target: Int = Int.random(in:1...100)
    var score: Int = 0
    var round: Int = 1
    var leaderboardEntries: [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false){
        if loadTestData{
            leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 200, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 300, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 400, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 500, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 600, date: Date()))
        }
    }
    
    func point(sldierValue: Int) -> Int {
        // If there is diffenrence, and the there is a bonus
        let difference = abs(self.target - sldierValue)
        let bonus: Int
        // Exactly  get 100 point/ Close like 2 difference get 50 point/ the others are 0 point
        if difference == 0{
            bonus = 100
        }else if difference <= 2{
            bonus = 50
        }else{
            bonus = 0
        }
        // Point Rule 
        return 100 - difference + bonus
    }
    
    mutating func addToLeadboard(point: Int){
        leaderboardEntries.append(LeaderboardEntry(score: point,date:Date()))
        leaderboardEntries.sort{$0.score > $1.score}
    }
    
    mutating func startNewRound(points:Int){
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeadboard(point: points)
    }
    
    mutating func restart(){
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
}


//        var difference : Int = 0
//
//        if sldierValue > self.target {
//            difference = sldierValue - self.target
//        }else if self.target < sldierValue{
//            difference = self.target - sldierValue
//        }else{
//            difference = 0
//        }


//        if difference < 0 {
//            difference *= -1
//        }


//
//          let awardedPoints: Int = 100 - abs(self.target - sldierValue)
//
//          if awardedPoints == 100{
//
//                return awardedPoints + 100
//
//          }else if awardedPoints == 98{
//
//               return awardedPoints + 50
//
//          }else{
//
//              return awardedPoints
//          }
