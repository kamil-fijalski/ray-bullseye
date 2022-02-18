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
            .font(.body)
            .padding()
            .foregroundColor(Color("LabelColor"))
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

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            NumberText(number: 69)
            LabelSliderText(numText: "500860435")
        }
    }
}
