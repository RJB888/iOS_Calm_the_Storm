//
//  MapView.swift
//  calmTheStorm
//
//  Created by Student Account on 5/14/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    
    @State var region: MKCoordinateRegion =
        MKCoordinateRegion(center:
                            CLLocationCoordinate2D(latitude: 47.6848, longitude: -122.1883), span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8))
    
    let tornado1 = [
        AnnotatedItem(name: "Tornado Shelter", coordinate: .init(latitude: 47.6848, longitude: -121.9857))]
    
    let volcano = [
        AnnotatedItem(name: "Volcano Safe Area", coordinate: .init(latitude: 47.48, longitude: -122.22))]
    
    let earthquake = [
        AnnotatedItem(name: "Earthquake Safe Location", coordinate: .init(latitude: 47.5301011, longitude: -122.03261910000003))]
    
    let tornado2 = [
        AnnotatedItem(name: "Tornado Shelter", coordinate: .init(latitude: 47.34, longitude: -122.1))]
    
    let wildfire = [
        AnnotatedItem(name: "Wildfire Safe Area", coordinate: .init(latitude: 47.98, longitude: -122.2))]
    
    let tornado3 = [
        AnnotatedItem(name: "Tornado Shelter", coordinate: .init(latitude: 47.7423, longitude: -121.9857))]
    
    
    var disaster: String
    var body: some View {
        
        
        
        
        
        
        NavigationView{
            ZStack{
                Color.Ivory.ignoresSafeArea(.all)
                VStack{
                    Text("\(disaster) Safe Areas")
                        .font(.custom("Avenir", size: 30))
                        .bold()
                        .padding()
                        .offset( y:-100)
                    
                    
                    
                    if (disaster == "Tornado") {
                        Map(coordinateRegion: $region, annotationItems: tornado1) { item in
                            
                            MapAnnotation(coordinate: item.coordinate) {
                                RoundedRectangle(cornerRadius
                                                    :10.0)
                                    .stroke(Color.red, lineWidth: 4.0)
                                    .frame(width:50, height:50)
                                    
                                
                            }
                        }
                        .offset( y:-50)
                    } else if (disaster == "Wildfire"){
                        Map(coordinateRegion: $region, annotationItems: wildfire) { item in
                            
                            MapAnnotation(coordinate: item.coordinate) {
                                RoundedRectangle(cornerRadius
                                                    :50.0)
                                    .stroke(Color.red, lineWidth: 4.0)
                                    .frame(width:60, height:110)
                            }
                        }
                        .offset( y:-50)
                    }else if (disaster == "Volcano"){
                        Map(coordinateRegion: $region, annotationItems: volcano) { item in
                            
                            MapAnnotation(coordinate: item.coordinate) {
                                RoundedRectangle(cornerRadius
                                                    :50.0)
                                    .stroke(Color.red, lineWidth: 4.0)
                                    .frame(width:100, height:40)
                            }
                        }
                        .offset( y:-50)
                    }else if (disaster == "Earthquake"){
                        Map(coordinateRegion: $region, annotationItems: earthquake) { item in
                            
                            MapAnnotation(coordinate: item.coordinate) {
                                RoundedRectangle(cornerRadius
                                                    :50.0)
                                    .stroke(Color.red, lineWidth: 4.0)
                                    .frame(width:80, height:35)
                            }
                        }
                        .offset( y:-50)
                    }
                }
            }
        }
    }
}

struct AnnotatedItem: Identifiable {
    typealias UIViewType = UIView
    
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(disaster: "Temp")
            .preferredColorScheme(.light)
    }
}
