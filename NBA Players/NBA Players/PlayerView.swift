//
//  ContentView.swift
//  NBA Players
//
//  Created by Faraz Haider on 13/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    var player:Player
        
    var body: some View {
        VStack{
            Image(player.team.imageName).resizable().frame(height: 250)
            
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle().stroke(Color.white,lineWidth: 4)).shadow(radius: 15).offset(x: 0, y: -90).padding(.bottom, -90)
            
            Text(player.name).font(.system(size: 50)).bold()
            StatText(statName: "Age", statValue: String(player.age))
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: String(player.weight))
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: players[0])
    }
}
