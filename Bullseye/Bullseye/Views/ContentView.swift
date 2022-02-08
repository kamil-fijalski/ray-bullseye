//
//  ContentView.swift
//  Bullseye
//
//  Created by Kamil on 05/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                    .font(.body)
                    .padding()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
                    .font(.body)
                    .padding()
            }
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert("Hello Swift!", isPresented: $alertIsVisible) {
                Button("Awesome!") { }
            } message: {
                let roundedValue: Int = Int(sliderValue.rounded())
                Text("The slider values is: \(roundedValue)\n" + "Your points: \(game.points(sliderValue: roundedValue))")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
