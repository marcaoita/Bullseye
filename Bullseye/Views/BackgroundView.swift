//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Gerência de Auditoria Interna on 20/08/22.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(Color("BackgroundColor").edgesIgnoringSafeArea(.all))
    }
}

struct TopView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            RoundedImageView(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageView(systemName:
                                "list.dash")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    var body: some View {
        HStack {
            VStack(spacing: 5) {
                Text(title.uppercased())
                    .kerning(1.5)
                    .bold()
                    .font(.caption)
                
                Text(text)
                    .font(.title3)
                    .bold()
                    .kerning(-0.2)
                    .foregroundColor(Color("TextColor"))
                    .frame(width: 68.0, height: 55.78)
                    .overlay(
                        RoundedRectangle(cornerRadius: 21)
                            .strokeBorder(Color("MenuBorder"), lineWidth: 2.0)
                    )
            }
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            NumberView(title: "score", text:  String(game.score))
            Spacer()
            NumberView(title: "round", text: String(game.round))
        }
        .padding()
    }
}

//struct BackgroundView_Previews: PreviewProvider {
//    static var previews: some View {
//        BackgroundView(game: .constant(Game()))
//        BottomView(game: .constant(Game()))
//    }
//}
