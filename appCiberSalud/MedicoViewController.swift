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
    let decoder = JSONDecoder()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typealias jsonObject = [String : Any]
        typealias jsonArray =  [jsonObject]
        
        
        
        /* AF.request("​https://cibersalud.herokuapp.com/api/medico").responseJSON{
            (response) in
                print(response)
        } */
        
        AF.request("https://cibersalud.herokuapp.com/api/medico", method: .get, parameters: nil, encoding: JSONEncoding.default)
        .responseJSON { response in
            switch response.result {
            case .success(let data):
                DispatchQueue.main.async {
                    }
            case .failure(let error):
                print(error)
            }
        
    }
    
    }
    
}
