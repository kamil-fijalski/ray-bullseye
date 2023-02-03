//
//  PointsView.swift
//  Bullseye
//
//  Created by Kamil Fijalski on 03/02/2023.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10){
            InstructionText(text: "The slider's values is")
            NumberText(number: 99)
            BodyText(text: "You Scored 200 Points\n🎉🎉🎉")
            Button(action: {}) {
                ButtonText(text: "Start New Round")
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView()
            .preferredColorScheme(.dark)
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
