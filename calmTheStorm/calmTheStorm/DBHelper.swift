//
//  DBHelper.swift
//  calmTheStorm
//
//  Created by ROBERT BRONSON on 5/21/21.
//

import Foundation
import RealmSwift

final class DBHelper:ObservableObject {
    
    private var tornadoList: Results<KitItemDB>
    private var earthquakeList: Results<KitItemDB>
    private var wildfireList: Results<KitItemDB>
    private var volcanoList: Results<KitItemDB>
    
    init(realm:Realm){
        tornadoList = realm.objects(KitItemDB.self)
            .filter("type = \"Tornado\"")
        earthquakeList = realm.objects(KitItemDB.self)
            .filter("type = \"Earthquake\"")
        wildfireList = realm.objects(KitItemDB.self)
            .filter("type = \"Wildfire\"")
        volcanoList = realm.objects(KitItemDB.self)
            .filter("type = \"Volcano\"")
    }
    
    var tornadoArray: [CheckListItem] {
        tornadoList.map(CheckListItem.init)
    }
    var earthquakeArray: [CheckListItem]{
        earthquakeList.map(CheckListItem.init)
    }
    var wildfireArray: [CheckListItem]{
        wildfireList.map(CheckListItem.init)
    }
    var volcanoArray: [CheckListItem]{
        volcanoList.map(CheckListItem.init)
    }

}

extension DBHelper {
    
    func initializeDB(){
        objectWillChange.send()
        do {
            let realm = try Realm()
            let results = realm.objects(KitItemDB.self)
            print(results)
            if (results.isEmpty){
                TornadoText.forEach {
                    create(title:$0 , type:"Tornado")
                }
                WildfireText.forEach {
                    create(title:$0 , type: "Wildfire")
                }
                EarthquakeText.forEach {
                    create(title:$0 , type:"Earthquake" )
                }
                VolcanoText.forEach {
                    create(title: $0, type:"Volcano" )
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    func create(title: String,
                isChecked: Bool = false,
                preGenerated: Bool = true,
                type: String){
        objectWillChange.send()
        do {
            let realm = try Realm()
            
            let kitItemDB = KitItemDB()
            kitItemDB.id = UUID().hashValue
            kitItemDB.title = title
            kitItemDB.isChecked = isChecked
            kitItemDB.preGenerated = preGenerated
            kitItemDB.type = type
            
            try realm.write {
                realm.add(kitItemDB)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func addByUser(title: String, type:String){
        if (title == ""){
            return
        }else {
            create(title: title, type: type);
        }
    }
    
    func toggleChecked(kitItem: CheckListItem){
        objectWillChange.send()
        do {
            let realm = try Realm()
            try realm.write {
                realm.create(
                KitItemDB.self,
                value: ["id":kitItem.id,
                        "isChecked": !kitItem.isChecked],
                update: .modified)
            }
        }catch let error {
            print(error.localizedDescription)
        }
    }
    
    //TODO: add function for deleting user-created entries
    
}
