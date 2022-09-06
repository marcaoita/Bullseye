//
//  Shapes.swift
//  Bullseye
//
//  Created by Gerência de Auditoria Interna on 17/08/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .padding()
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            Capsule()
        }
        .background(Color.green)
        .ignoresSafeArea(.all)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
