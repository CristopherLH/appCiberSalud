//
//  RolClass.swift
//  appCiberSalud
//
//  Created by DAMII on 12/11/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class RolClass{
    let idRol: Int
    let authority: String
    
    init(idRol: Int, authority: String){
        self.idRol = idRol
        self.authority = authority
    }
}
