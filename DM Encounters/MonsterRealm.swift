//
//  MonstersRealm.swift
//  DM Encounters
//
//  Created by Mikael Olezeski on 2/5/18.
//  Copyright © 2018 Mikael Olezeski. All rights reserved.
//

import Foundation
import RealmSwift

class MonsterRealm: Object {
    @objc dynamic var name = ""
    @objc dynamic var size = ""
    @objc dynamic var type = ""
    @objc dynamic var subtype: String? = nil
    @objc dynamic var alignment = ""
    @objc dynamic var armorClass = 0
    @objc dynamic var hitPoints = 0
    @objc dynamic var hitDice = ""
    @objc dynamic var speed = ""
    @objc dynamic var strength = 0
    @objc dynamic var dexterity = 0
    @objc dynamic var constitution = 0
    @objc dynamic var intelligence = 0
    @objc dynamic var wisdom = 0
    @objc dynamic var charisma = 0
    let constitutionSave = RealmOptional<Int>()
    let intelligenceSave = RealmOptional<Int>()
    let wisdomSave = RealmOptional<Int>()
    let history = RealmOptional<Int>()
    let perception = RealmOptional<Int>()
    @objc dynamic var damageVulnerabilities: String? = nil
    @objc dynamic var damageResistances: String? = nil
    @objc dynamic var damageImmunities: String? = nil
    @objc dynamic var conditionImmunities: String? = nil
    @objc dynamic var senses: String? = nil
    @objc dynamic var languages: String? = nil
    @objc dynamic var challengeRating = ""
    let specialAbilities: List<SpecialAbilityRealm>? = nil
    @objc dynamic var actions: [ActionRealm]?
    @objc dynamic var legendaryActions: [LegendaryActionRealm]?
}

class SpecialAbilityRealm: Object {
    let name = ""
    let desc = ""
    let attackBonus = RealmOptional<Int>()
    let damageDice: String? = nil
    let damageBonus = RealmOptional<Int>()
}

class ActionRealm: Object {
    let name = ""
    let desc = ""
    let attackBonus = RealmOptional<Int>()
    let damageDice: String? = nil
    let damageBonus = RealmOptional<Int>()
}

class LegendaryActionRealm: Object {
    let name = ""
    let desc = ""
    let attackBonus = RealmOptional<Int>()
    let damageDice: String? = nil
    let damageBonus = RealmOptional<Int>()
}








