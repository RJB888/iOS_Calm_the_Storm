//
//  ContentView.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.Ivory.ignoresSafeArea(.all)
            Text("Hello, Calm the Storm Team!")
                .font(
                    //Is This Font Okay?
                    .custom("Avenir", size: 20))

                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
