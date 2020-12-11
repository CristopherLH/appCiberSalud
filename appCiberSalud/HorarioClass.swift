//
//  HorarioClass.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class HorarioClass {
    let id: Int
    let fecha: Date
    let hora: String
    let medico: MedicoClass
    let consultorio: ConsultorioClass
    let estado: Bool
    
    init(id: Int, fecha: Date, hora: String, medico: MedicoClass, consultorio: ConsultorioClass, estado: Bool){
        self.id = id
        self.fecha = fecha
        self.hora = hora
        self.medico = medico
        self.consultorio = consultorio
        self.estado = estado
    }
    
}
