//
//  CellMedicos.swift
//  appCiberSalud
//
//  Created by DAMII on 12/11/20./Users/damii/appCiberSalud/appCiberSalud/MedicoViewController.swift
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit
import Alamofire
class CellMedicos: UITableViewCell {
    

    @IBOutlet weak var lblNombres: UILabel!
    @IBOutlet weak var lblApellidos: UILabel!
    @IBOutlet weak var lblCmp: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
