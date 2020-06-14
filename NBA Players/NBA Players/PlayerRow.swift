//
//  PlayerRow.swift
//  NBA Players
//
//  Created by Faraz Haider on 14/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player:Player
    
    var body: some View {
        HStack{
            Image(player.imageName).resizable().scaledToFit().clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
            Text(player.name).font(.largeTitle)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
                    PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
        }
    }
}
