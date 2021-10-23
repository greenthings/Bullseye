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
        //        var difference : Int = 0
        //
        //        if sldierValue > self.target {
        //            difference = sldierValue - self.target
        //        }else if self.target < sldierValue{
        //            difference = self.target - sldierValue
        //        }else{
        //            difference = 0
        //        }
        
        let difference: Int = abs(self.target - sldierValue)
        
        //        if difference < 0 {
        //            difference *= -1
        //        }
        
        let awardedPoints: Int = 100 - difference
        
        return awardedPoints
    }
    
    mutating func startNewRound(points:Int){
        score += points
        round += 1
    }
    
}

