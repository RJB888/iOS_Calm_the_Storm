//
//  CheckListView.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

struct CheckListView: View{
    @State private var newItem = ""
    @EnvironmentObject var dbHelper: DBHelper
    var disaster: String
    private func addUserItem(){
        dbHelper.create(title: newItem, preGenerated: false, type: disaster)
        newItem = ""
    }
    
    var body: some View{
        
        ZStack{
            Color.Ivory.ignoresSafeArea(.all)
            
            VStack{
                Text("\(disaster) Survival Kit")
                    .font(.custom("Avenir", size: 30))
                    .bold()
                    .padding()
                    .offset( y:-30)
                
                Form{
                    HStack{
                        TextField("New Item", text: $newItem)
                        Button(action: { addUserItem()}, label: {
                            Text("ADD")
                        }).buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(width: 440, height:110, alignment: .top)
                .offset( y:-30)
                
                
                
                Section {
                    if (disaster == "Tornado"){
                        List(dbHelper.tornadoArray){item in
                            CheckView(kitItem:item)
                                .font(.custom("Avenir", size: 18))
                        }
                    } else if (disaster == "Wildfire"){
                        List(dbHelper.wildfireArray){item in
                            CheckView(kitItem:item)
                                .font(.custom("Avenir", size: 18))
                        }
                    }  else if (disaster == "Earthquake"){
                        List(dbHelper.earthquakeArray){item in
                            CheckView(kitItem:item)
                                .font(.custom("Avenir", size: 18))
                        }
                    }  else if (disaster == "Volcano"){
                        List(dbHelper.volcanoArray){item in
                            CheckView(kitItem:item)
                                .font(.custom("Avenir", size: 18))
                        }
                    }
                }
                
                
            }.colorMultiply(Color.Ivory)
            .font(.custom("Avenir", size: 18))
        }
    }
}


struct CheckList_Previews: PreviewProvider{
    static var previews: some View{
        CheckListView(disaster: "Temp")
    }
}
