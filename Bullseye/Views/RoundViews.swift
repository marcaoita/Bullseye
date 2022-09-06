//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Gerência de Auditoria Interna on 17/08/22.
//

import SwiftUI

struct RoundedImageView: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("MenuBorder"), lineWidth: 2.0)
            )
    }
}

//struct PreviewView: View {
//    var body: some View {
//        HStack {
//            RoundedImageView(systemName: "arrow.counterclockwise")
//
//            RoundedImageView(systemName: "list.dash")
//
//        }
//    }
//}
//
//struct RoundedViews_Previews: PreviewProvider {
//    static var previews: some View {
//        PreviewView()
//        PreviewView()
//            .preferredColorScheme(.dark)
//    }
//}
