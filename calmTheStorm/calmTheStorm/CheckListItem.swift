//
//  CheckListItem.swift
//  calmTheStorm
//
//  Created by Student Account on 5/1/21.
//

import SwiftUI

struct CheckListItem: Identifiable {
    let id: Int
    let isChecked: Bool
    let title: String
    let type: String
    let preGenerated: Bool
}

extension CheckListItem {
    init(kitItemDB: KitItemDB){
        id = kitItemDB.id
        title = kitItemDB.title
        isChecked = kitItemDB.isChecked
        type = kitItemDB.type
        preGenerated = kitItemDB.preGenerated
    }
}

