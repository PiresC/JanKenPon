//
//  Home.swift
//  JanKenPon
//
//  Created by Pires Cerullo on 19/04/20.
//  Copyright © 2020 Pires Cerullo. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var show = false
    var body: some View {
        VStack {
            ZStack() {
                StrokeText(text: "Jan",width: 0.5,color: .black)
                    .foregroundColor(.Jan)
                    .multilineTextAlignment(.leading)
                    .font(.system(size:50, weight: .bold, design: .rounded))
                    .offset(x:0,y:-30)
                StrokeText(text: "Ken",width: 0.5,color: .black)
                    .foregroundColor(.Ken)
                    .multilineTextAlignment(.leading)
                    .font(.system(size:50, weight: .bold, design: .rounded))
                    .offset(x:0,y:0)
                StrokeText(text: "Pon",width: 0.5,color: .black)
                    .foregroundColor(.Pon)
                    .multilineTextAlignment(.leading)
                    .font(.system(size:50, weight: .bold, design: .rounded))
                    .offset(x:0,y:30)
            }
            .padding(.top, -150.0)
            .frame(width: nil)
            
            Button(action: {
            print("Play Tapped")
            }){
            Circle()
            .frame(width: 270, height: 270)
            .overlay(
                Circle()
               .stroke(Color.black,lineWidth: 12)
            )
                .foregroundColor(Color("white"))
            .overlay(
                Image("play")
                    .padding(.leading, 35.0)
                )
                .scaleEffect(show ? 1:1.1)
                .animation(Animation.spring()
                    .repeatForever(autoreverses: true)) 
                .onAppear(){
                    self.show.toggle()
                }
            }
            .padding(.bottom, 150.0)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


