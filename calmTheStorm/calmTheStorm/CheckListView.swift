//
//  CheckListView.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

struct CheckListView: View{
    var disaster: String
    
    var body: some View{
        
        ZStack{
            Color.Ivory.ignoresSafeArea(.all)
            
            VStack{
                Text("\(disaster) Survival Kit")
                    .font(.custom("Avenir", size: 30))
                    .bold()
                    .padding()
                
                //this can't be right... there has to be a better way.
                if (disaster == "Tornado"){
                    List(TornadoList){item in
                       CheckView(kitItem:item).environmentObject(item)
                    }
                } else if (disaster == "Wildfire"){
                    List(WildfireList){item in
                       CheckView(kitItem:item).environmentObject(item)
                    }
                }  else if (disaster == "Earthquake"){
                    List(EarthquakeList){item in
                       CheckView(kitItem:item).environmentObject(item)
                    }
                }  else if (disaster == "Volcano"){
                    List(VolcanoList){item in
                       CheckView(kitItem:item).environmentObject(item)
                    }
                }

            }
        .colorMultiply(Color.Ivory)
        .font(.title)
        }
    }
}
    

struct CheckList_Previews: PreviewProvider{
    static var previews: some View{
        CheckListView(disaster: "Temp")
    }
}
