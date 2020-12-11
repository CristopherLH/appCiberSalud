//
//  Doctor.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class MedicoClass {
    
    var nombres:String
    var apellidos:String
    var cmp:String
    let celular: String
    let documento: String
    let foto: String
    let direccion: String
    
    
    init (nombres: String, apellidos: String, cmp: String, celular: String, documento: String, foto: String, direccion: String) {
        self.nombres = nombres
        self.apellidos = apellidos
        self.cmp = cmp
        self.celular = celular
        self.documento = documento
        self.foto = foto
        self.direccion = direccion
    }
    
}
