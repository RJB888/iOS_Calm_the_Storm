//
//  KitItemDB.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 5/21/21.
//

import Foundation
import RealmSwift

class KitItemDB: Object {
    @objc dynamic var id = UUID()
    @objc dynamic var data = ""
    @objc dynamic var checked = false
    @objc dynamic var preGenerated = true
    @objc dynamic var type = ""
    
    convenience init(data:String, type:String) {
        self.init()
        self.id = UUID()
        self.data = data
        self.type = type
        self.checked = false
    }
    
//    convenience init(data:String, preGenerated:Bool){
//        self.init()
//        self.id = UUID()
//        self.data = data
//        self.checked = false
//        self.preGenerated = preGenerated
//    }
    
    override static func primaryKey() -> String? {
        "id"
    }
}
