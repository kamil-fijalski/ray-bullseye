//
//  Game.swift
//  Bullseye
//
//  Created by Kamil Fijalski on 09/02/2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let difference: Int = abs(sliderValue - target)
        var bonus: Int = 0
        
        if difference == 0 {
            bonus = 100
        }
        else if difference <= 2 {
            bonus = 75
        }
        
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func startNewGame() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
