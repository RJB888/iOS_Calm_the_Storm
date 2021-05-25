//
//  KitItemDB.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 5/21/21.
//

import Foundation
import RealmSwift

class KitItemDB: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var isChecked = false
    @objc dynamic var preGenerated = true
    @objc dynamic var type = ""
    
    override static func primaryKey() -> String? {
        "id"
        }
}


