//
//  MapView.swift
//  calmTheStorm
//
//  Created by Student Account on 5/14/21.
//

import SwiftUI
import CoreLocation

struct MapView: View {
    var disaster: String
    var body: some View {
        NavigationView{
            ZStack{
                Color.Ivory.ignoresSafeArea(.all)
            VStack{
                Text("\(disaster) Safe Areas")
                    .font(.custom("Avenir", size: 30))
                    .bold()
                    .offset( y:-80)

                GeometryReader { proxy in
                    Map(coordinate:
                        CLLocationCoordinate2D(latitude: 47.6848, longitude: -122.1883))
                        .frame(width: proxy.size.width,
                               height: proxy.size.height,
                               alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset( y:-80)
                }
              }
                
            }
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(disaster: "Temp")
            .preferredColorScheme(.light)
    }
}
