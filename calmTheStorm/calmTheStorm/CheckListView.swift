//
//  CheckListView.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

struct CheckListView: View{
    
    var body: some View{
        
        List(checkListData){item in
            CheckView(isChecked: item.isChecked, title: item.title)
           
        }
        
        .font(.title)            
    
    }
}

struct CheckList_Previews: PreviewProvider{
    static var previews: some View{
        CheckListView()
    }
}
