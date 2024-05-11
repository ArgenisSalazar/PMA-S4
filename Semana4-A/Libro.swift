//
//  Libro.swift
//  Semana4-A
//
//  Created by Mac21 on 6/04/24.
//

import Foundation

class Libro {
    var titulo: String
    var autor: String
    var genero: String
    var estado: Bool
    
    init(titulo: String, autor: String, genero: String) {
        self.titulo = titulo
        self.autor = autor
        self.genero = genero
        self.estado = true
    }
    
}
