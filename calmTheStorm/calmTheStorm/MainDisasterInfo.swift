//
//  MainDisasterInfo.swift
//  calmTheStorm
//
//  Created by Student Account on 5/19/21.
//

import SwiftUI


struct MainDisasterInfo: View {
    
    var DisasterInfo: String
    var body: some View {
        VStack{
            Text("\(DisasterInfo) Information")
            
            if(DisasterInfo == "Tornado"){
                List(TornadoData){ Info in
                    infoRow(whichInfo: Info)
                }
            }
            
            if(DisasterInfo == "Wildfire"){
                List(WildfireData){ Info in
                    infoRow(whichInfo: Info)
                }
            }
            
            if(DisasterInfo == "Earthquake"){
                List(EarthquakeData){ Info in
                    infoRow(whichInfo: Info)
                }
            }
            
            if(DisasterInfo == "Volcano"){
                List(VolcanoData){ Info in
                    infoRow(whichInfo: Info)
                }
            }
        }
    }
}

struct MainDisasterInfo_Previews: PreviewProvider {
    static var previews: some View {
        MainDisasterInfo(DisasterInfo: "test")
    }
}
