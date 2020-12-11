//
//  MedicoViewController.swift
//  appCiberSalud
//
//  Created by DAMII on 12/11/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit
import Alamofire

class MedicoViewController: UIViewController{
 
    
    @IBOutlet weak var tblMedicos: UITableView!
    
    var medico = [MedicoClass]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typealias jsonObject = [String : Any]
        typealias jsonArray =  [jsonObject]
        
        let url = "​https://cibersalud.herokuapp.com/api​/medico"
        
        AF.request(url).responseJSON{
            (response) in
                print(response)
        }
        
    }
    
    
}
