//
//  UsuarioClass.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class Usuario {
    
    let id: Int
    let email: String
    let password: String
    let estado: Bool
    let paciente: PacienteClass
    let roles: [RolClass]
    let create_at: String
    
    init(id: Int, email: String, password: String, estado: Bool, paciente: PacienteClass, roles: [RolClass], create_at: String){
        self.id = id
        self.email = email
        self.password = password
        self.estado = estado
        self.paciente = paciente
        self.roles = roles
        self.create_at = create_at
    }
}
