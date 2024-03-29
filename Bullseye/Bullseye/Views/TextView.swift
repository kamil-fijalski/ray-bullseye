//
//  TextView.swift
//  Bullseye
//
//  Created by Kamil Fijalski on 17/02/2022.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("LabelColor"))
    }
}

struct NumberText: View {
    var number: Int
    
    var body: some View {
        Text(String(number))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("LabelColor"))
    }
}

struct LabelSliderText: View {
    var numText: String
    
    var body: some View {
        Text(numText)
            .bold()
            .foregroundColor(Color("LabelColor"))
            .frame(width: 35.0)
    }
}

struct ButtonLook: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.title3)
    }
}

struct LabelTextView: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("LabelColor"))
            .kerning(1.5)
            .bold()
            .font(.caption)
    }
}

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .lineSpacing(12.0)
            .multilineTextAlignment(.center)
    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("AccentColor"))
            .cornerRadius(12.0)
    }
}

struct RoundRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(-0.2)
            .bold()
            .font(.title3)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            NumberText(number: 69)
            LabelSliderText(numText: "500860435")
            LabelTextView(text: "Score")
            RoundRectTextView(text: "999")
            BodyText(text: "You Scored 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
        }
        .padding()
    }
}
