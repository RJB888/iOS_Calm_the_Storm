//
//  ContentView.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 4/16/21.
//

import SwiftUI
import SwiftUIFontIcon

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.Ivory.ignoresSafeArea(.all)
        VStack{
        HStack{
            Text("Calm The Storm")
                .font(
                    //Is This Font Okay?
                    .custom("Avenir", size: 25))
                .bold()
                .padding(.top)
                
            Image(systemName: "cloud.sun.fill")
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .font(.system(size: 30))
           
                }
            VStack{
                Image(systemName: "tornado")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 40))
                    .padding(.top,80)
                
                Image(systemName: "flame.fill")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 40))
                    .padding()
                
                Image(systemName: "waveform.path.ecg")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 40))
                    .padding(.bottom, 30)
                
                Image(systemName: "cloud.fill")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 32))
                    .padding(-20)
                
                Image(systemName: "triangle")
                    .font(.system(size: 40))
                    .padding(-12)
            }
            Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
