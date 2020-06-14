//
//  StatText.swift
//  NBA Players
//
//  Created by Faraz Haider on 14/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct StatText: View {
    var statName : String
    var statValue : String
    var body: some View {
        HStack(alignment: .center) {
            Text("\(statName):").font(.system(size: 45)).fontWeight(.bold).padding(.leading,30)
            Text("\(statValue)").font(.system(size: 45)).fontWeight(.light).padding(.trailing,30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "-", statValue: "-")
    }
}
