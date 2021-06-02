//
//  Checkboxes.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//
import SwiftUI

struct CheckView: View {
    @EnvironmentObject var dbHelper:DBHelper
    var kitItem : CheckListItem
    
    var body: some View{
        VStack{
            Button(action: {dbHelper.toggleChecked(kitItem: kitItem)}){
                HStack{
                    Image(systemName: kitItem.isChecked ? "checkmark.square": "square")
                    Text(kitItem.title)
                        .font(.custom("Avenir", size: 18))
                }
             }
        }
     }
}

struct CheckView_Previews: PreviewProvider{
    static var previews: some View{
        CheckView(kitItem: sampleItem)
    }
}
