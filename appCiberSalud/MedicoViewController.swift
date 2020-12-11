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
        
        
        
        /* AF.request("​https://cibersalud.herokuapp.com/api/medico").responseJSON{
            (response) in
                print(response)
        } */
        
        AF.request("https://cibersalud.herokuapp.com/api/medico", method: .get, parameters: nil, encoding: JSONEncoding.default)
        .responseJSON { response in
            switch response.result {
            case .success(let data):
                let response = data as! NSArray
                for med in response {
                    let medico = med as! NSDictionary
                    let nombre = medico["nombres"] as? String ?? ""
                    let apellid = medico["apellidos"] as? String ?? ""
                    let cmp = medico["cmp"] as? String ?? ""
                    let medicoN = MedicoClass(nombres: nombre, apellidos: apellid, cmp: cmp, celular: "String", documento: "", foto: "", direccion: "")
                    self.medicos.append(medicoN)
                }
                self.tblMedicos.reloadData()
                self.tblMedicos.dataSource = self
            case .failure(let error):
                print(error)
            }
        
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*let viewCell = tableView.dequeueReusableCell(withIdentifier: "cellDoctor", for: indexPath) as! CellMedicos
        let paisObtenido = self.viewCell[indexPath.row]
        //LANDEO ESTAS?????
        viewCell.txtNamePais.text = paisObtenido.nombrePais
        viewCell.txtConfirmados.text = paisObtenido.casosConfirmados
        viewCell.txtMuertos.text = paisObtenido.casosMuertos
        viewCell.txtRecuperados.text = paisObtenido.casosRecuperados*/
    }
}
