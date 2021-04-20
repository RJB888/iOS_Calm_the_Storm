//
//  SurvivalSelection.swift
//  calmTheStorm
//
//  Created by Student Account on 4/20/21.
//

import SwiftUI

struct SurvivalSelection: View {
    var body: some View {
        
        VStack{
        Text("Survival Information")
            .font(.custom("Avenir", size: 30))
            .bold()
            .offset( y:-70)
        
        Button("Survival Info"){

        }
        .accentColor(.gray)
        .padding()
        .cornerRadius(20)
        
        Button("Map Info"){

        }
        .accentColor(.gray)
        .padding()
        }
    }
}

struct SurvivalSelection_Previews: PreviewProvider {
    static var previews: some View {
        SurvivalSelection()
    }
}
