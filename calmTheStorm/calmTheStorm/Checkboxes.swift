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
        let extraText = String(kitItem.isChecked);
        VStack{
            Text(extraText)
            Button(action: {dbHelper.toggleChecked(kitItem: kitItem)}){
                HStack{
                    Image(systemName: kitItem.isChecked ? "checkmark.square": "square")
                    Text(kitItem.title)
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
