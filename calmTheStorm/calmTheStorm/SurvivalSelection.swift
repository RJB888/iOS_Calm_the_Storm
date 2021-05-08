//
//  SurvivalSelection.swift
//  calmTheStorm
//
//  Created by Student Account on 4/20/21.
//

import SwiftUI

struct SurvivalSelection: View {
    var body: some View {
    ZStack{
        Color.Ivory.ignoresSafeArea(.all)
        
        VStack{
        Text("Survival Information")
            .font(.custom("Avenir", size: 30))
            .bold()
            .offset( y:-180)
            
            
            HStack{
                Image(systemName: "info.circle")
                    .font(.system(size: 30))
                    .offset( y:-50)
        Button("Survival Info"){
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .font(.custom("Avenir", size: 28))
        .accentColor(.black)
        .padding(3)
        .offset( y:-50)
            }
        
            HStack{
                Image(systemName: "map")
                    .font(.system(size: 30))
        Button("Map Info"){

        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .font(.custom("Avenir", size: 28))
        .accentColor(.black)
        .padding(10)
        }
      }
    }
  }
}

struct SurvivalSelection_Previews: PreviewProvider {
    static var previews: some View {
        SurvivalSelection()
    }
}
