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
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                InstructionView(game: $game)
                SliderView(sliderValue: $sliderValue)
                    .padding()
                HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
    }
}

struct InstructionView: View {
    
    @Binding var game: Game
    
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            NumberText(number: game.target)
        }
    }
}

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            LabelSliderText(numText: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            LabelSliderText(numText: "100")
        }
    }
}

struct HitMeButton: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            alertIsVisible = true
        }) {
            ButtonLook(text: "Hit Me")
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            })
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .alert("Hello Swift!", isPresented: $alertIsVisible) {
            Button("Awesome!") { }
        } message: {
            let roundedValue: Int = Int(sliderValue.rounded())
            Text("The slider values is: \(roundedValue)\n" + "Your points: \(game.points(sliderValue: roundedValue))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
