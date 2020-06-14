//
//  PlayerList.swift
//  NBA Players
//
//  Created by Faraz Haider on 14/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView{
            List(players){
                player in
                NavigationLink(destination: PlayerView(player: player)){
                PlayerRow(player: player)
                }
            }.navigationBarTitle(Text("NBA Final Players"),displayMode: .large)
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
