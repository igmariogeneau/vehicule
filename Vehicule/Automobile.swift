//========================================
import Foundation
//========================================
class Automobile: Vehicule {
    //------------------------------------
    var marque: String
    //------------------------------------
    init(couleur: String, marque: String, image: String) {
        self.marque = marque
        super.init(couleur: couleur, image: image)
    }
    //------------------------------------
    override func quiSuisJe() -> String {
        return "Je suis une automobile \(couleur) de marque \(marque)"
    }
    //------------------------------------
}
//========================================
