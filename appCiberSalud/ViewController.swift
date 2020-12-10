//
//  ViewController.swift
//  appCiberSalud
//
//  Created by Jonathan Castillo on 9/12/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        performSegue(withIdentifier: "goRegister", sender: nil)
    }

    @IBAction func btnLogin(_ sender: Any) {
        performSegue(withIdentifier: "goTabBarMain", sender: nil)
    }
}

