//
//  Game.swift
//  Bullseye
//
//  Created by Gerência de Auditoria Interna on 10/08/22.
//

import Foundation
import SwiftUI

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        
//        if difference < 0 {
//            difference *= -1
//        }
        
//        if (sliderValue - self.target) > 0 {
//            difference = sliderValue - target
//        } else if (sliderValue - self.target) < 0 {
//            difference = (sliderValue - target)*(-1)
//        } else if target==sliderValue {
//            difference = 0
//        }
        
        if (sliderValue == target) {
            return 200
        } else if (sliderValue == target + 2) {
            return 98 + 50
        } else {
            return 100 - abs(sliderValue - target)
        }

    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
}
