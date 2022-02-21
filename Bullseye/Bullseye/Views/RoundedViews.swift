//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Kamil Fijalski on 21/02/2022.
//

import SwiftUI

struct RoundedViewsStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("LabelColor"))
            .frame(width: 56, height: 56)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedViewsFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedBottomView: View {
    var text: String
    
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: 15.0)
            .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            .frame(width: 68, height: 56)
            RoundRectTextView(text: text)
        }
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedViewsStroked(systemName: "arrow.counterclockwise")
            RoundedViewsFilled(systemName: "list.dash")
            RoundedBottomView(text: "999")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
