//
//  ContentView.swift
//  Bullseye
//
//  Created by Marcao Adrenalina on 06/08/22.
//

import SwiftUI

struct ContentView: View {
    
    //Check if the popup is visible
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            
            BackgroundView(game: $game)
            
            VStack {
    
                InstructionsView(game: $game)
                
                SliderView(sliderValue: $sliderValue)

                HitMeButton(alertIsVisible: $alertIsVisible, game: $game, sliderValue: $sliderValue)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
    
