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
                    .offset( y:-27)
                TextField("Add a new item", text:$newItem)
                Text("\(newItem)")
                Form{
                    HStack{
                        Section { TextField("New Item", text: $newItem)}
                        Button(action: { newItem = ""}, label: {
                            Text("Submit")
                                .padding(5.0)
                                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                        })
                    }
                    Section {Text("\(newItem)")}
                }
                //this can't be right... there has to be a better way.
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
                Spacer()
            
//                Form {
//                    HStack {
//                        Section { TextField("New Item", text: $newItem)}
//                        Button("ADD", action: {addUserItem()})
//                        }.font(.custom("Avenir", size: 20))
//                }
        
        }.colorMultiply(Color.Ivory)
            .font(.title)
        }
    }
}

struct CheckList_Previews: PreviewProvider{
    static var previews: some View{
        CheckListView(disaster: "Temp")
    }
}
