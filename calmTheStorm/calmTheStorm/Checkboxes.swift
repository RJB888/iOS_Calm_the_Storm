//
//  Checkboxes.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//
import SwiftUI

struct CheckView: View {
    @ObservedObject var kitItem : CheckListItem
    
    var body: some View{
        let extraText = String(kitItem.isChecked);
        VStack{
            Text(extraText)
            Button(action: {kitItem.toggle();}){
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
        CheckView(kitItem:CheckListItem(title: "Test"))
    }
}
