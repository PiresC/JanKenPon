//
//  Start.swift
//  JanKenPon
//
//  Created by Pires Cerullo on 19/04/20.
//  Copyright © 2020 Pires Cerullo. All rights reserved.
//

import SwiftUI

struct Start: View {
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
            .frame(width: 300, height: 300)
            .overlay(
                Circle()
               .stroke(Color.black,lineWidth: 12)
            )
                .foregroundColor(Color("Jan"))
            .overlay(
                Image("play")
                    .padding(.leading, 35.0)
                )
            }
            .padding(.bottom, 200.0)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}


