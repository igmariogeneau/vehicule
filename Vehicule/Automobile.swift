//
//  Automobile.swift
//  Vehicule
//
//  Created by eleves on 17-07-18.
//  Copyright © 2017 eleves. All rights reserved.
//

import Foundation

class Automobile: Vehicule {
    var marque: String
    
    init(couleur: String, marque: String, image: String) {
        self.marque = marque
        super.init(couleur: couleur, image: image)
    }
    
    override func quiSuisJe() -> String {
        return "Je suis une autombile \(couleur) de marque \(marque)"
    }
}
