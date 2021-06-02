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
                    //Spacer()
                    Text("\(disaster) Survival")
                        .font(.custom("Avenir", size: 30))
                        .bold()
                        .offset(y: -20)
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(
                        destination: MainDisasterInfo(DisasterInfo: disaster),
                        label: {
                            HStack{
                                Image(systemName: "info.circle")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                    .foregroundColor(.black)
                                Text("Survival Info")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width:170, height: 50)
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
                        .frame(height: 80)
                    
                    NavigationLink(
                        destination: MapView(disaster: disaster),
                        label: {
                            HStack{
                                Image(systemName: "map")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                    .foregroundColor(.black)
                                Text("Map Info")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width:170, height: 50)
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
                        .frame(height: 80)
                    
                    NavigationLink(
                        destination: CheckListView(disaster: disaster),
                        label: {
                            HStack{
                                Image(systemName: "cross.case.fill")
                                    .renderingMode(.template)
                                    .font(.system(size: 30))
                                    .foregroundColor(.black)
                                Text("Survival Kit")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width:170, height: 50)
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
              }
            }
        
  }
}

struct SurvivalSelection_Previews: PreviewProvider {
    static var previews: some View {
        SurvivalSelection(disaster: "Test")
    }
}
