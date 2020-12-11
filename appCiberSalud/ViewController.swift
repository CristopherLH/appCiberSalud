//
//  ViewController.swift
//  appCiberSalud
//
//  Created by Jonathan Castillo on 9/12/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit

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
        /*performSegue(withIdentifier: "goTabBarMain", sender: nil)*/
        guard let usuario = txtLogin.text else{
            print("usuario erronea")
            return
        }
        
        guard let clave = txtContraseña.text else{
            print("clave erronea")
            return
        }
        
        
        
        let json: [String: Any] = ["email": "renatocastillo@gmail.com",
                                  "password": "12345"]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://cibersalud.herokuapp.com/api/usuario/login/paciente")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
               guard let data = data, error == nil else {
                   print(error?.localizedDescription ?? "No data")
                   return
               }
               let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
               if let responseJSON = responseJSON as? [String: Any] {
                   print(responseJSON)
               }
        }
    }
}

