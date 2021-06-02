//
//  ContentView.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 4/16/21.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    //@EnvironmentObject var dbHelper: DBHelper
    let realm:Realm
    init() {
        do {
          realm = try Realm()
        } catch let error {
          // Handle error
          fatalError("Failed to open Realm. Error: \(error.localizedDescription)")
        }
        let db = DBHelper(realm:realm)
        db.initializeDB()
    }
    var body: some View {
        
        NavigationView{
           ZStack{
                Color.Ivory.ignoresSafeArea(.all)
                VStack{
                    HStack{
                        Text("Calm The Storm")
                            .font(.custom("Avenir", size: 30))
                            .bold()
                            .offset( y:-70)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.template)
                            .font(.system(size: 30))
                            .offset( y:-75)
                    }
                    
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Tornado"),
                        label: {
                            HStack{
                                Image(systemName: "tornado")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                Text("Tornado")
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width:150, height: 50)
                                
                            }
                            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .background(Color.Salmon)
                            .opacity(0.8)
                            .cornerRadius(20)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.black, lineWidth: 2.5)
                                    )
                      
                        }
                    )
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Wildfire"),
                        label: {
                            HStack{
                                Image(systemName: "flame.fill")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                Text("Wildfire")
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width:150, height: 50)
                            }
                            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .background(Color.Salmon)
                            .opacity(0.8)
                            .cornerRadius(20)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.black, lineWidth: 2.5)
                                    )
                        })
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Earthquake"),
                        label: {
                            HStack{
                                Image(systemName: "waveform.path.ecg")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                Text("Earthquake")
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    
                                    .frame(width:150, height: 50)
                            
                            }
                            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .background(Color.Salmon)
                            .opacity(0.8)
                            .cornerRadius(20)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.black, lineWidth: 2.5)
                                    )
                         
                        })
                    Spacer()
                        .frame(height: 50)
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Volcano"),
                        label: {
                            HStack{
                                VStack{
                                    Image(systemName: "smoke.fill")
                                        .renderingMode(.template)
                                        .font(.system(size: 25))
                                        .offset(x: -9, y: -4)
                                    Image(systemName: "triangle")
                                        .font(.system(size: 25))
                                        .offset(y: -15)
                                }
                                Text("Volcano")
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width:150, height: 50)

                            }
                            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .background(Color.Salmon)
                            .opacity(0.8)
                            .cornerRadius(20)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.black, lineWidth: 2.5)
                                    )
                        })
                    Spacer()
                        
                }
           }
        }
        .buttonStyle(PlainButtonStyle())
        .environmentObject(DBHelper(realm: realm))
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
