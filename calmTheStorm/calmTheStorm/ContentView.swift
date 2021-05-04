//
//  ContentView.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 4/16/21.
//

import SwiftUI

struct ContentView: View {
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
                        destination: Text("Destination"),
                        label: {
                            HStack{
                                Image(systemName: "tornado")
                                    .renderingMode(.template)
                                    .font(.system(size: 40))
                                Text("Tornado")
                                    .font(.largeTitle)
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .opacity(0.8)
                            
                        }
                    )
                    
                    Spacer()
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack{
                                Image(systemName: "flame.fill")
                                    .renderingMode(.template)
                                    .font(.system(size: 40))
                                Text("Wildfire")
                                    .font(.largeTitle)
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .opacity(0.8)
                        })
                    Spacer()
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack{
                                Image(systemName: "waveform.path.ecg")
                                    .renderingMode(.template)
                                    .font(.system(size: 40))
                                Text("Earthquake")
                                    .font(.largeTitle)
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .opacity(0.8)
                        })
                    Spacer()
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack{
                                VStack{
                                    Image(systemName: "smoke.fill")
                                        .renderingMode(.template)
                                        .font(.system(size: 32))
                                        .offset(x: -9, y: 5.0)
                                    Image(systemName: "triangle")
                                        .font(.system(size: 30))
                                        .offset(y: -5)
                                }
                                Text("Volcano")
                                    .font(.largeTitle)
                                    .offset(y: 10)
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .opacity(0.8)
                        })
                    Spacer()
                }
           }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
