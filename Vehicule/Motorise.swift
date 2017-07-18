//
//  Motorise.swift
//  Vehicule
//
//  Created by eleves on 17-07-18.
//  Copyright © 2017 eleves. All rights reserved.
//

import Foundation

class Motorise: Vehicule {
    var longueur: String
    
    init(couleur: String, longueur: String, image: String) {
        self.longueur = longueur
        super.init(couleur: couleur, image: image)
    }
    
    override func quiSuisJe() -> String {
        return "Je suis un motorise \(couleur) de \(longueur) pieds"
    }
}
