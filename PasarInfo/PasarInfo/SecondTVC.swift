//
//  SecondTVC.swift
//  PasarInfo
//
//  Created by Universidad Politecnica de Gómez Palacio on 08/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class SecondTVC: UITableViewController {

  
    @IBOutlet weak var lblFullName: UILabel!
    var fullName : String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.lblFullName.text = fullName
    }
    
    
}
