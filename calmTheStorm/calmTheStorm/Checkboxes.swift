//
//  Checkboxes.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//
import SwiftUI

struct CheckView: View {
    @State var isChecked: Bool = false
    var title:String
    func toggle(){isChecked = !isChecked;}
    var body: some View{
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                Text(title)
            }
         }
     }
}

struct CheckView_Previews: PreviewProvider{
    static var previews: some View{
        CheckView(title: "Title")
    }
}
