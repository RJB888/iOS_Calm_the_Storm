//
//  CheckListView.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

struct CheckListView: View{
    var disaster: String
    var body: some View{
        ZStack{
            Color.Ivory.ignoresSafeArea(.all)
            
            VStack{
            Text("\(disaster) Survival Kit")
                .font(.custom("Avenir", size: 30))
                .bold()
                .padding()
            
        List(checkListData){item in
            CheckView(isChecked: item.isChecked, title: item.title)
        }
                
    }
        .colorMultiply(Color.Ivory)
        .font(.title)
        }
    }
}
    

struct CheckList_Previews: PreviewProvider{
    static var previews: some View{
        CheckListView(disaster: "Temp")
    }
}
