//
//  MonsterDetailViewController.swift
//  DM Encounters
//
//  Created by Mikael Olezeski on 1/30/18.
//  Copyright © 2018 Mikael Olezeski. All rights reserved.
//

import UIKit

class MonsterDetailViewController: UIViewController {

    @IBOutlet weak var name: UITextView!
    
    var monster: Monster?
    @IBOutlet weak var ac: UITextView!
    @IBOutlet weak var hp: UITextView!
    @IBOutlet weak var strength: UITextView!
    @IBOutlet weak var dex: UITextView!
    @IBOutlet weak var constitution: UITextView!
    @IBOutlet weak var intelligence: UITextView!
    @IBOutlet weak var wisdom: UITextView!
    @IBOutlet weak var charisma: UITextView!
    @IBOutlet weak var actions: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(monster)
        name.text = monster!.name
        ac.text = String(describing: monster!.armorClass)
        hp.text = String(describing: monster!.hitPoints)
        strength.text = String(describing: monster!.strength)
        dex.text = String(describing: monster!.dexterity)
        constitution.text = String(describing: monster!.constitution)
        intelligence.text = String(describing: monster!.intelligence)
        wisdom.text = String(describing: monster!.wisdom)
        charisma.text = String(describing: monster!.charisma)
        loadActions()
        
    }
    
    private func loadActions() {
        if let monsterActions = monster?.actions {
            actions.text = actions.text + "\n\n"
            for action in monsterActions {
                let actionText = action.name + ": " + action.desc + "\n\n"
                actions.text = actions.text + actionText
                print(actions.text)
            }
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
