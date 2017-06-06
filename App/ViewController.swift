//
//  ViewController.swift
//  App
//
//  Created by Francesca Cascella on 30/05/17.
//  Copyright © 2017 Francesca Cascella. All rights reserved.
//

import UIKit

// Classe per il view controller principale
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var nome: UITextField!
    
    @IBOutlet weak var casella: UITextView!
    
    @IBOutlet var tastiera: UITapGestureRecognizer!
  
    
    @IBOutlet var immag: UIImageView!
    @IBAction func tap() {
    immag.image = UIImage(named: "images")
        
        var inseriscinome: String = nome.text!
        inseriscinome = inseriscinome.trimmingCharacters(in: CharacterSet.whitespaces).capitalized
        
        if (inseriscinome == "Paolino" || inseriscinome == "Giuseppe" || inseriscinome == "Lelio" || inseriscinome == "Pasquale") {
            casella.text = "Ciao \(inseriscinome), sei un istruttore fantastico!"
        }
        else {
            casella.text = "Ciao \(inseriscinome) , ti auguro una buona giornata al corso IOS Foundation Program"

        }
        nome.resignFirstResponder()
    }
}




