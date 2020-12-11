//
//  CitaClass.swift
//  appCiberSalud
//
//  Created by DAMII on 12/10/20.
//  Copyright © 2020 Jonathan Castillo. All rights reserved.
//

import Foundation

class CitaClass {
    let id: Int
    let fechaReg: Date
    let paciente: PacienteClass
    let horario: HorarioClass
    let estadoCita: EstadoCitaClass
    let especialidad: EspecialidadClass
    
    init(id: Int, fechaReg: Date, paciente: PacienteClass, horario: HorarioClass, estadoCita: EstadoCitaClass, especialidad: EspecialidadClass){
        self.id = id
        self.fechaReg = fechaReg
        self.paciente = paciente
        self.horario = horario
        self.estadoCita = estadoCita
        self.especialidad = especialidad
    }
}
