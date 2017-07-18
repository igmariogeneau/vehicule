//
//  Motocyclette.swift
//  Vehicule
//
//  Created by eleves on 17-07-18.
//  Copyright © 2017 eleves. All rights reserved.
//

import Foundation

class Motocyclette: Vehicule {
    var moteur: String
    
    init(couleur: String, moteur: String, image: String) {
        self.moteur = moteur
        super.init(couleur: couleur, image: image)
    }
    
    override func quiSuisJe() -> String {
        return "Je suis une motocyclette \(couleur) avec un moteur \(moteur)"
    }
}
