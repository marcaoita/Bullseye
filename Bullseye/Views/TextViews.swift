//
//  TextViews.swift
//  Bullseye
//
//  Created by Gerência de Auditoria Interna on 14/08/22.
//

import SwiftUI


struct InstructionText: View {
    var instruction: String = "LET'S PLAY BAMBOOZLED 🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO\n"
    var body: some View {
        Text(instruction.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var number: String
    var body: some View {
        Text(number)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
        
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText()
            BigNumberText(number: "888")
        }
    }
}

struct InstructionsView: View {
    
    @Binding var game: Game
    
    var body: some View {
        VStack {
            InstructionText()
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            
            BigNumberText(number: String(game.target))
        }
    }
    
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        
        HStack {
            SliderLabelText(text: "1")
                .frame(width: 34.0, height: 21.0)
            Slider(value: $sliderValue, in: 1.0...100.0)
                .accentColor(Color("SliderColor"))
            SliderLabelText(text: "100")
                .frame(width: 34.0, height: 21.0)
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    @Binding var sliderValue: Double
    var body: some View {
        Button(action: {
            alertIsVisible = true
        }) {
            Text("hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
        .alert("Title", isPresented: $alertIsVisible)
        {
            Button("Try again") {
                game.startNewRound(points: game.points(sliderValue: Int(sliderValue)))
            }
        } message: {
            let roundedValue = Int(sliderValue.rounded()) //casting the double variable sliderValue to roundedValue
            
            Text("The slider value is \(Int(sliderValue)).\n" + "You scored \(game.points(sliderValue: Int(sliderValue))) points in this round.\n")
        }
    }
}
