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
                            .font(.custom("Avenir", size: 40))
                            .bold()
                            .padding(.top)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.template)
                            .font(.system(size: 30))
                        
                    }
                    Spacer()
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
                            
                        })
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
                        })
                    Spacer()
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack{
                                VStack{
                                    Image(systemName: "cloud.fill")
                                        .renderingMode(.template)
                                        .font(.system(size: 32))
                                        .offset(y: 10)
                                    
                                    Image(systemName: "triangle")
                                        .font(.system(size: 40))
                                }
                                
                                Text("Volcano")
                                    .font(.largeTitle)
                            }
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
