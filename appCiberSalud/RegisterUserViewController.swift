//
//  RegisterUserViewController.swift
//  appCiberSalud
//
//  Created by Jonathan Castillo on 9/12/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit
import Alamofire

class RegisterUserViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtAdrress: UITextField!
    @IBOutlet weak var txtTypeDocument: UITextField!
    @IBOutlet weak var txtNumberDocument: UITextField!
    @IBOutlet weak var txtDateBirth: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    let listaTipoDocumento = ["Dni", "Ruc", "Carnet Extranjeria"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pickerTipoDocumento = UIPickerView()
        pickerTipoDocumento.dataSource = self
        pickerTipoDocumento.delegate = self
        txtTypeDocument.inputView = pickerTipoDocumento
        
        /**/
            // ya queda
        
    }


    @IBAction func btnRegistrar(_ sender: Any) {
        /**/
        guard let txtInputTipoDocumento = txtTypeDocument else {
            print("Entro")
            return
        }
        
        guard let txtName = txtName.text , let txtLastName = txtLastName.text, let txtPhone = txtPhone.text, let txtAdrress = txtAdrress.text, let txtNumberDocument = txtNumberDocument.text, let txtEmail = txtEmail.text, let txtPassword = txtPassword.text else {
            print("ERror")
            return
        }
    
        let parameter: [String: Any] = [
            "email" : txtEmail,
            "password" : txtPassword,
            "paciente" :
                [
                    "nombres" : txtName,
                    "apellidos": txtLastName,
                    "celular" : txtPhone,
                    "direccion": txtAdrress,
                    "documento": txtNumberDocument
                ],
        ]
        
        AF.request("https://cibersalud.herokuapp.com/api/usuario/paciente", method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<500)
            .responseJSON {  response in
                       switch response.result {
                      case .success(let data):
                         print(data)
                       case .failure(let error):
                         print(error)
                       }
        }

        /*{
          "email": "string",
          "password": "string",
          "paciente": {
            "nombres": "string",
            "apellidos": "string",
            "celular": "string",
            "direccion": "string",
            "foto": "string",
            "documento": "string",
            "fechaNacimiento": "2020-12-11T11:28:30.843Z",
            "tipoDocumento": {
              "id": 0,
              "descripcion": "string"
            }
          },
          "roles": [
            {
              "idRol": 0,
              "authority": "string"
            }
          ],
          "create_at": "2020-12-11T11:28:30.843Z"
        }*/
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaTipoDocumento.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listaTipoDocumento[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let optTipo = listaTipoDocumento[row]
        txtTypeDocument.text = optTipo
    
    }
  

}
