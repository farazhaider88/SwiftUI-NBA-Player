//
//  ContentView.swift
//  NBA Players
//
//  Created by Faraz Haider on 13/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("gs").resizable().frame(height: 250)
            
            Image("steph")
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle().stroke(Color.white,lineWidth: 4)).shadow(radius: 15).offset(x: 0, y: -90).padding(.bottom, -90)
            
            Text("Steph curry").font(.system(size: 50)).bold()
            StatText(statName: "Age", statValue: "31")
            StatText(statName: "Height", statValue: "6'5\"")
            StatText(statName: "Weight", statValue: "190lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
