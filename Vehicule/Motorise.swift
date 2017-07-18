//========================================
import Foundation
//========================================
class Motorise: Vehicule {
    //------------------------------------
    var longueur: String
    //------------------------------------
    init(couleur: String, longueur: String, image: String) {
        self.longueur = longueur
        super.init(couleur: couleur, image: image)
    }
    //------------------------------------
    override func quiSuisJe() -> String {
        return "Je suis un motorisé \(couleur) de \(longueur) pieds"
    }
    //------------------------------------
}
//========================================
