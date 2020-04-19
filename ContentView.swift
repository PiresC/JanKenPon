//
//  ContentView.swift
//  JanKenPon
//
//  Created by Pires Cerullo on 19/04/20.
//  Copyright © 2020 Pires Cerullo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(spacing: -35) {
                StrokeText(text: "Jan",width: 0.5,color: .black)
                    .foregroundColor(.Jan)
                    .multilineTextAlignment(.leading)
                    .font(.system(size:50, weight: .bold, design: .rounded))
                StrokeText(text: "Ken",width: 0.5,color: .black)
                    .foregroundColor(.Ken)
                    .multilineTextAlignment(.leading)
                    .font(.system(size:50, weight: .bold, design: .rounded))
                StrokeText(text: "Pon",width: 0.5,color: .black)
                    .foregroundColor(.Pon)
                    .multilineTextAlignment(.leading)
                    .font(.system(size:50, weight: .bold, design: .rounded))
            }
            Text("How To Play")
                .font(.system(size:50, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(width: 300.0, height: 100.0)
            VStack {
                Text("player choose 1 of the Rock, Paper, and Scissor.")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(.bottom)
                    .frame(width: 300.0, height: 100.0)
                Text("Rock defeat Scissor, Paper defeat Rock, and Scissor Defeat Paper.")
                .font(.system(.title, design: .rounded))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(.vertical)
                    .frame(width: 300.0)
                Text("if both player choose the same thing, do it again.")
            .font(.system(.title, design: .rounded))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(.top)
                    .frame(width: 300.0, height: 100.0)
                }
            Button(action: {
                print("Next Tapped")
            }){
                Text("Next")
                .font(.system(size:30, weight: .bold, design: .rounded))
                .foregroundColor(Color.black)
                .frame(minWidth: 0, maxWidth: 300)
                .padding(10)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 3)
                )
                
            }
            .padding(.top, 50.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}
extension Color{
    static let Jan = Color("Jan")
    static let Ken = Color("Ken")
    static let Pon = Color("Pon")
    
}
