//
//  ContentView.swift
//  NBA Players Mac
//
//  Created by Faraz Haider on 18/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(players){
            player in
                PlayerRow(player: player)
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
