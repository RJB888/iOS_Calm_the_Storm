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
    var disaster: String
    var body: some View {
        
            ZStack{
                Color.Ivory.ignoresSafeArea(.all)
                
                VStack{
                    Spacer()
                    Text("\(disaster) Survival")
                        .font(.custom("Avenir", size: 40))
                        .bold()
                        .offset( y:0)
                    NavigationLink(
                        destination: MainDisasterInfo(DisasterInfo: disaster),
                        label: {
                            HStack{
                                Image(systemName: "info.circle")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                Text("Survival Info")
                                    .font(.largeTitle)
                                    .font(.custom("Avenir", size: 28))
                                    .frame(
                                        minWidth: 0/*@END_MENU_TOKEN@*/, maxWidth: 700, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
                            }
                            .accentColor(.black)
                            .padding(3)
                            .offset( y:-50)
                        }
                    )
                  
                    NavigationLink(
                        destination: MapView(disaster: disaster),
                        label: {
                            HStack{
                                Image(systemName: "map")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                Text("Map Info")
                                    .font(.largeTitle)
                                    .font(.custom("Avenir", size: 28))
                                    .frame(
                                    minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 700, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            .accentColor(.black)
                            .padding(3)
                            .offset( y:-50)
                        }
                    )
         
                    NavigationLink(
                        destination: CheckListView(disaster: disaster),
                        label: {
                            HStack{
                                Image(systemName: "cross.case.fill")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                Text("Survival Kit")
                                    .font(.largeTitle)
                                    .font(.custom("Avenir", size: 28))
                                    .frame(
                                    minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 700, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            .accentColor(.black)
                            .padding(3)
                            .offset( y:-50)
                        }
                    )
                    Spacer()
              }
            }
        
  }
}

struct SurvivalSelection_Previews: PreviewProvider {
    static var previews: some View {
        SurvivalSelection(disaster: "Test")
    }
}
