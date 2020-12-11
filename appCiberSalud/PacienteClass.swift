//
//  PacienteClass.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class PacienteClass {
    var id: Int?
    var nombres: String
    var apellidos: String
    let celular: String
    var direccion: String
    var foto: String?
    let documento: String
    let fechaNacimiento: String
    let edad: Int?
    let peso: Decimal?
    let estatura: Decimal?
    let tipoDocumento: TipoDocumentoClass
    
    init(id: Int, nombres: String, apellidos: String, celular: String, direccion: String, foto: String, documento: String, fechaNacimiento: String, edad: Int?, peso: Decimal?, estatura: Decimal?, tipoDocumento: TipoDocumentoClass){
        self.id = id
        self.nombres = nombres
        self.apellidos = apellidos
        self.celular = celular
        self.direccion = direccion
        self.foto = foto
        self.documento = documento
        self.fechaNacimiento = fechaNacimiento
        self.edad = edad
        self.peso = peso
        self.estatura = estatura
        self.tipoDocumento = tipoDocumento
    }
}
