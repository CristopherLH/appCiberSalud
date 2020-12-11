//
//  ConsultorioClass.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class ConsultorioClass {
    let id: Int
    let piso: Int
    let numero: Int
    let aforo: Int
    
    init(id: Int, piso: Int, numero: Int, aforo: Int){
        self.id = id
        self.piso = piso
        self.numero = numero
        self.aforo = aforo
    }
}
