//
//  ViewController.swift
//  PasarInfo
//
//  Created by Universidad Politecnica de Gómez Palacio on 08/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var txfFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txfFullName.text = "Brianda Sanjuana Rangel Rodriguez"
    }
    
    @IBAction func sendData(_ sender: Any) {
        //self.txfFullName.text = "Maria José Rdz"
      
        let fullName : String = self.txfFullName.text ?? ""
        self.performSegue(withIdentifier: "sgSecondTVC", sender: fullName)
    }
    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "sgSecondTVC"
        {
            if let secondTVC: SecondTVC = segue.destination as? SecondTVC
            {
                if let fullName : String = sender as? String
                {
                    secondTVC.fullName = fullName
                }
            }
        }
    }
}

