//========================================
import Foundation
//========================================
class Vehicule {
    //------------------------------------
    var couleur: String
    var image: String
    //------------------------------------
    init(couleur: String, image: String) {
        self.couleur = couleur
        self.image = image
    }
    //------------------------------------
    func quiSuisJe() -> String {
        return "Je suis un véhicule de couleur \(couleur)..."
    }
    //------------------------------------
}
//========================================
