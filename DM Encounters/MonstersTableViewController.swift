//
//  ViewController.swift
//  DM Encounters
//
//  Created by Mikael Olezeski on 1/29/18.
//  Copyright © 2018 Mikael Olezeski. All rights reserved.
//

import UIKit

class MonstersTableViewController: UITableViewController {
    
    var monsters = [Monsters]()
    let jSONName = "Monsters"

    // App setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jSONStruct = ReadJSON()
        if let monstersJSON = jSONStruct.readJson(with: jSONName) as? [Monsters] {
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
            if let monsterDetailVC = segue.destination as? MonsterDetailViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    monsterDetailVC.monster = monsters[indexPath.row]
                }
                
            }
        default:
            return
        }
    }
    
    
    
}

