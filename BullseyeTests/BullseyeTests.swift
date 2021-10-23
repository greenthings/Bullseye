//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by greenthings on 2021/10/17.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }               
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        XCTAssertEqual(game.point(sldierValue: 50), 999)
//    }
    // There are a lot of function in swift
    
    func testScorePositive(){
        let guess = game.target + 5
        let score = game.point(sldierValue: guess)
        print("It is positive")
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative(){
        let guess = game.target - 5
        let score = game.point(sldierValue: guess)
        print("It is negative")
        XCTAssertEqual(score, 95)
    }
    
    func testNewRound(){
        game.startNewRound(points:100)
        XCTAssertEqual(game.score,100)
        XCTAssertEqual(game.round,2)
    }

}


            
