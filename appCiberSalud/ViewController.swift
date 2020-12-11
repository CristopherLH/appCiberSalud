//
//  ViewController.swift
//  appCiberSalud
//
//  Created by Jonathan Castillo on 9/12/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var txtContraseña: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        performSegue(withIdentifier: "goRegister", sender: nil)
    }

    @IBAction func btnLogin(_ sender: Any) {
        
        guard let usuario = txtLogin.text else{
            print("usuario erronea")
            return
        }
        
        guard let clave = txtContraseña.text else{
            print("clave erronea")
            return
        }

        let parameter: [String: Any] = ["email": "\(usuario)",
        "password": "\(clave)"]
        

        AF.request("https://cibersalud.herokuapp.com/api/usuario/login/paciente", method: .post, parameters: parameter, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
                switch response.result {
                case .success(let data):
                    print(data)
                    self.performSegue(withIdentifier: "goTabBarMain", sender: nil)
                case .failure(let error):
                    print(error)
                }
            }
        
        
        
        /*
        AF.request("https://cibersalud.herokuapp.com/api/medico").responseJSON{
            (response) in print(response)
        }*/
        
    }
}

