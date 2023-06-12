//
//  Player.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 26/10/22.
//

import Foundation
import SwiftUI

struct Player: Identifiable {
    
    var id: UUID = UUID() // Id automatico
    var name: String
    var avatar: Avatar
    var score: Int
    var informations: [String]
    var currentQuestion = -1 //parte da meno uno perchè ogni volta che un player viene scelto  randomicamente questo valore viene incrementato
    var founded : Bool = false
    
    func AddPlayer(name: String, avatar: Avatar, info1: String, info2: String, info3: String) -> Player {

        var x = Player(name: "", avatar: Avatar(image: Image(""),picked: false), score: 0, informations: ["", "", ""])
        x.name = name
        x.avatar = avatar
        x.score = 0
        x.informations[0] = info1
        x.informations[1] = info2
        x.informations[2] = info3
        
 
        
        return x
    }
    
}



