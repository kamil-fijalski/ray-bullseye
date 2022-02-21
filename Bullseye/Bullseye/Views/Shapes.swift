//
//  Shapes.swift
//  Bullseye
//
//  Created by Kamil Fijalski on 20/02/2022.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                //.fill(Color.blue)
                
                //.inset(by: 10)
                //.stroke(Color.red, lineWidth: 20.0)
                .strokeBorder(Color.red, lineWidth: 20.0, antialiased: true)
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            Capsule()
                .fill(Color.yellow)
                .frame(width: 200, height: 100)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
