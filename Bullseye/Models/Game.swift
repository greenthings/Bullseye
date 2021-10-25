//
//  Game.swift
//  Bullseye
//
//  Created by greenthings on 2021/10/17.
//

import Foundation

struct Game {
    var target: Int = Int.random(in:1...100)
    var score: Int = 0
    var round: Int = 1
    
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
    
    mutating func startNewRound(points:Int){
        score += points
        round += 1
        target += Int.random(in: 1...100)
    }
    
    mutating func restart(){
        score = 0
        round = 1
        target += Int.random(in: 1...100)
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
