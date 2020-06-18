//
//  ContentView.swift
//  NBA Players Watch WatchKit Extension
//
//  Created by Faraz Haider on 18/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            ForEach(players){
                player in
                        VStack{
                    Image(player.imageName).resizable().frame(width: 50.0, height: 50.0).scaledToFit().clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
                            Text(player.name).font(.largeTitle).minimumScaleFactor(0.5).foregroundColor(.white)
                    Spacer()
                        }.padding().background(Color.blue).cornerRadius(40).frame(height: 100, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
