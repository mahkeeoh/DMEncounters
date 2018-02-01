//
//  Monsters.swift
//  DM Encounters
//
//  Created by Mikael Olezeski on 1/29/18.
//  Copyright © 2018 Mikael Olezeski. All rights reserved.
//

import Foundation

struct Monsters: Codable {
    let name: String
    let size: String
    let type: String
    let subtype: String?
    let alignment: String
    let armorClass: Int
    let hitPoints: Int
    let hitDice: String
    let speed: String
    let strength: Int
    let dexterity: Int
    let constitution: Int
    let intelligence: Int
    let wisdom: Int
    let charisma: Int
    let constitutionSave: Int?
    let intelligenceSave: Int?
    let wisdomSave: Int?
    let history: Int?
    let perception: Int?
    let damageVulnerabilities: String?
    let damageResistances: String?
    let damageImmunities: String?
    let conditionImmunities: String?
    let senses: String?
    let languages: String?
    let challengeRating: String
   // var specialAbilities: [[String: String]]
  //  var actions: [[String: String]]
  //  var legendaryActions: [[String: String]]
    
    enum CodingKeys : String, CodingKey {
        
        case name
        case size
        case type
        case subtype
        case alignment
        case armorClass = "armor_class"
        case hitPoints = "hit_points"
        case hitDice = "hit_dice"
        case speed
        case strength
        case dexterity
        case constitution
        case intelligence
        case wisdom
        case charisma
        case constitutionSave = "constitution_save"
        case intelligenceSave = "intelligence_save"
        case wisdomSave = "wisdom_save"
        case history
        case perception
        case damageVulnerabilities = "damage_vulnerabilities"
        case damageResistances = "damage_resistances"
        case damageImmunities = "damage_immunities"
        case conditionImmunities = "condition_immunities"
        case senses
        case languages
        case challengeRating = "challenge_rating"
     //   case specialAbilities = "special_abilities"
     //   case actions
     //   case legendaryActions = "legendary_actions"
        
    }
    
    
}
