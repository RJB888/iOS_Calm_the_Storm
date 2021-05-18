//
//  Survival_kit.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

struct SurvivalKit: View{
    var disaster: String
    var body: some View{
        CheckListView(disaster: disaster)
    }
}

struct SurvivalKit_Previews: PreviewProvider{
    static var previews: some View{
        SurvivalKit(disaster: "Temp")
    }
}
