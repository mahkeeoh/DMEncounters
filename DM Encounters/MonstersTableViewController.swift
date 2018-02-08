//
//  ViewController.swift
//  DM Encounters
//
//  Created by Mikael Olezeski on 1/29/18.
//  Copyright © 2018 Mikael Olezeski. All rights reserved.
//

import UIKit
import RealmSwift

class MonstersTableViewController: UITableViewController {
    
    var monsters: Results<MonsterRealm> // initialize?
    let jSONName = "Monsters"

    // App setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load JSON and add to realm
        let realm = try! Realm()
        monsters = realm.objects(MonsterRealm.self)
        
        if let monstersJSON = self.readJson(with: jSONName) as? [Monster] {
            monsters = monstersJSON
        }
    }
    
    
    // Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return monsters.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "monsterCell", for: indexPath)
     
     cell.textLabel?.text = monsters[indexPath.row].name
     
     return cell
     }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    // Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "monsterDetail"?:
            if let monsterDetailVC = segue.destination.content as? MonsterDetailViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    monsterDetailVC.monster = monsters[indexPath.row]
                }
                
            }
        default:
            return
        }
    }
    
    
    
}

extension UIViewController {
    
    var content: UIViewController {
        if let navCon = self as? UINavigationController {
            return navCon.visibleViewController ?? self
        }
        else {
            return self
        }
    }
}

