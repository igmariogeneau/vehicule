//
//  Vehicule.swift
//  Vehicule
//
//  Created by eleves on 17-07-18.
//  Copyright © 2017 eleves. All rights reserved.
//

import Foundation

class Vehicule {
    var couleur: String
    var image: String
    
    init(couleur: String, image: String) {
        self.couleur = couleur
        self.image = image
    }
    
    func quiSuisJe() -> String {
        return "Je suis un véhicule de couleur \(couleur)..."
    }
}
