//
//  CheckListItem.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

class CheckListItem: Identifiable, ObservableObject{
    var id: UUID
    @Published var isChecked: Bool
    var title: String
    
    init(title: String){
        self.id = UUID()
        self.isChecked = false
        self.title = title
    }
    
    func toggle(){
        self.isChecked = !self.isChecked;
    }
}
