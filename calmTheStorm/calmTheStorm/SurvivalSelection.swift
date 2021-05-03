//
//  SurvivalSelection.swift
//  calmTheStorm
//
//  Created by Student Account on 4/20/21.
//
//struct BlueButton: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .padding()
//            .background(Color(red: 0, green: 0, blue: 0.5))
//            .foregroundColor(.white)
//            .clipShape(Capsule())
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        Button("Press Me") {
//            print("Button pressed!")
//        }
//        .buttonStyle(BlueButton())
//    }
//}
import SwiftUI

struct SurvivalSelection: View {
    var body: some View {
    ZStack{
        Color.Ivory.ignoresSafeArea(.all)
        VStack{
        Text("Survival Information")
            .font(.custom("Avenir", size: 30))
            .bold()
            .offset( y:-70)
        
        Button("Survival Info"){

        }
        .accentColor(.gray)
        .padding()
        .cornerRadius(20)
        
        Button("Map Info"){

        }
        .accentColor(.gray)
        .padding()
        }
    }
  }
}

struct SurvivalSelection_Previews: PreviewProvider {
    static var previews: some View {
        SurvivalSelection()
    }
}
