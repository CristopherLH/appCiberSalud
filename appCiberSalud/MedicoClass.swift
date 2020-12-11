//
//  Doctor.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class MedicoClass {
    
    let nombres:String
    let apellidos:String
    let cmp:String
    let celular: String
    let documento: String
    let foto: String
    let direccion: String
    let tipoDocumento: TipoDocumentoClass
    let especialidades: [EspecialidadClass]
    
    
    init (nombres: String, apellidos: String, cmp: String, celular: String, documento: String, foto: String, direccion: String, tipoDocumento: TipoDocumentoClass, especialidades: [EspecialidadClass]) {
        self.nombres = nombres
        self.apellidos = apellidos
        self.cmp = cmp
        self.celular = celular
        self.documento = documento
        self.foto = foto
        self.direccion = direccion
        self.tipoDocumento = tipoDocumento
        self.especialidades = especialidades
    }
    
}
