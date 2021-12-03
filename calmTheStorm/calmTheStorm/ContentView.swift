//
//  ContentView.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 4/16/21.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
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
        
        NavigationView {
           ZStack{
                Color.Ivory.ignoresSafeArea(.all)
                VStack{
                    HStack{
                        Text("Calm The Storm")
                            .font(.custom("Avenir", size: 40))
                            .bold()
                            .offset( y:-70)
                       Image(systemName: "cloud.sun.fill")
                            .renderingMode(.template)
                            .font(.system(size: 40))
                            .offset( y:-75)
                            
                    }
                    .offset( y:30)
                    
                    .padding(.init(top: 0, leading: 1, bottom: -8, trailing: 1))
                  
                    
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Tornado"),
                        
                        label: {
                            VStack{
                                GifImage("Tornado1")
                                    .frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 70)
                                
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.init(top: 20, leading: 1, bottom: -35, trailing: 1))
                                    
                                Text("Tornado")
                                    .font(.largeTitle)
                                    .offset(y:-35)
                                
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
                        .padding()
                    Spacer()
                        .frame(height: 10)
                    
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Wildfire"),
                        label: {
                            VStack{
                                GifImage("Wildfire1")
                                    .frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 70)
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.init(top: 20, leading: 1, bottom: -35, trailing: 1))
                                    
                                Text("Wildfire")
                                    .font(.largeTitle)
                                    .offset(y:-35)
                                
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
                        .frame(height: 10)
                    
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Earthquake"),
                        label: {
                            VStack{
                                GifImage("Eartquake1")
                                    .frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 70)
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.init(top: 20, leading: 1, bottom: -35, trailing: 1))
                                    
                                Text("Earthquake")
                                    .font(.largeTitle)
                                    .offset(y:-35)
                                
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
                        .padding()
                    Spacer()
                        .frame(height: 10)
                    NavigationLink(
                        destination: SurvivalSelection(disaster: "Volcano"),
                        label: {
                            VStack{
                                GifImage("Volcano1")
                                    .frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 70)
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.init(top: 20, leading: 1, bottom: -35, trailing: 1))
                                    
                                Text("Volcano")
                                    .font(.largeTitle)
                                    .offset(y:-35)
                                
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
                    
                }
                .padding(.init(top: 0, leading: 1, bottom: 100, trailing: 1))
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
