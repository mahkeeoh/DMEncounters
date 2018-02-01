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
    
    var monster: Monsters?
    @IBOutlet weak var ac: UITextView!
    @IBOutlet weak var hp: UITextView!
    @IBOutlet weak var strength: UITextView!
    @IBOutlet weak var dex: UITextView!
    @IBOutlet weak var constitution: UITextView!
    @IBOutlet weak var intelligence: UITextView!
    @IBOutlet weak var wisdom: UITextView!
    @IBOutlet weak var charisma: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(monster)
        name.text = monster?.name
        ac.text = String(describing: monster?.armorClass)
        hp.text = String(describing: monster?.hitPoints)
        strength.text = String(describing: monster?.strength)
        dex.text = String(describing: monster?.dexterity)
        constitution.text = String(describing: monster?.constitution)
        intelligence.text = String(describing: monster?.intelligence)
        wisdom.text = String(describing: monster?.wisdom)
        charisma.text = String(describing: monster?.charisma)
        
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
