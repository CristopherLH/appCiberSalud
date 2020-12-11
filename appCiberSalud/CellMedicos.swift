//
//  CellMedicos.swift
//  appCiberSalud
//
//  Created by DAMII on 12/11/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit

class CellMedicos: UITableViewCell {

    @IBOutlet weak var lblNombres: UILabel!
    @IBOutlet weak var lblApellidos: UILabel!
    @IBOutlet weak var lblCmp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
