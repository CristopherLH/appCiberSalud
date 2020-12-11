//
//  MedicoViewController.swift
//  appCiberSalud
//
//  Created by DAMII on 12/11/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit
import Alamofire

class MedicoViewController: UIViewController,UITableViewDataSource{
    

    @IBOutlet weak var tblMedicos: UITableView!
    
    var medicos = [MedicoClass]()
    let decoder = JSONDecoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typealias jsonObject = [String : Any]
        typealias jsonArray =  [jsonObject]

        AF.request("https://cibersalud.herokuapp.com/api/medico", method: .get, parameters: nil, encoding: JSONEncoding.default)
        .responseJSON { response in
            switch response.result {
            case .success(let data):
                print(data)
                let response = data as! NSArray
                for med in response {
                    let medico = med as! NSDictionary
                    let nombre = medico["nombres"] as? String ?? ""
                    let apellid = medico["apellidos"] as? String ?? ""
                    let cmp = medico["cmp"] as? String ?? ""
                    print(nombre, apellid, cmp)
                    
                    let medicoN = MedicoClass(nombres: nombre, apellidos: apellid, cmp: cmp, celular: "String", documento: "", foto: "", direccion: "")
                    self.medicos.append(medicoN)
                }
                
                DispatchQueue.main.async {
                    self.tblMedicos.reloadData()
                }
                
                
            case .failure(let error):
                print(error)
            }
        
        }
        
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return medicos.count
    }
           
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let viewCell = tableView.dequeueReusableCell(withIdentifier: "cellMedicos", for: indexPath)
               
        let lblNames = viewCell.viewWithTag(1) as? UILabel
        let lblApellidos = viewCell.viewWithTag(2) as? UILabel
        let lblCmp = viewCell.viewWithTag(3) as? UILabel
        
        let obj = self.medicos[indexPath.row]
               
        lblNames?.text = obj.nombres
        lblApellidos?.text = obj.apellidos
        lblCmp?.text = obj.cmp
        
        return viewCell
      }

}
