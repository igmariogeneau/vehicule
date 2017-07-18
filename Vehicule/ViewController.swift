//
//  ViewController.swift
//  Vehicule
//
//  Created by eleves on 17-07-18.
//  Copyright © 2017 eleves. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    @IBOutlet weak var textview: UITextView!

    @IBOutlet weak var tableview: UITableView!
    
    let fiat: Automobile = Automobile(couleur: "rouge", marque: "fiat", image: "fiat.png")
    let focus: Automobile = Automobile(couleur: "bleu", marque: "focus", image: "focus.jpg")
    let harley: Motocyclette = Motocyclette(couleur: "noire", moteur: "1200cc", image: "harley.jpg")
    let hymer: Motorise = Motorise(couleur: "brun", longueur: "34", image: "hymer.jpg")
    let prevost: Motorise = Motorise(couleur: "gris", longueur: "40", image: "prevost.jpg")
    let kawasaki: Motocyclette = Motocyclette(couleur: "verte", moteur: "1000cc", image: "kawasaki.jpg")
    
    var vehicules: [Vehicule]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vehicules = [fiat, focus, harley, hymer, prevost, kawasaki]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //---------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.backgroundColor = UIColor.clear
        return vehicules.count
    }
    //---------------------
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier:"proto")
        let cell = self.tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.textColor = UIColor.black
        cell?.backgroundColor = UIColor.clear
        
        if let anImageView = cell?.viewWithTag(100) as? UIImageView {
            let anImage = UIImage(named: vehicules[indexPath.row].image)
            anImageView.image = anImage
        }
        
        if let aLabel = cell?.viewWithTag(200) as? UILabel {
            var str = vehicules[indexPath.row].image
            let search: Character = "."
            let index = str.characters.index(of: search)
            aLabel.text = str.substring(to: index!)
        }
        
        return cell!
    }
    //---------------------
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath as IndexPath)!
        selectedCell.contentView.backgroundColor = UIColor.darkGray
        
        let vehicule: Vehicule = vehicules[indexPath.row]
        textview.text = vehicule.quiSuisJe()
    }
    //---------------------
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    //---------------------
}

