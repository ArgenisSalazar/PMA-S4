//
//  Biblioteca.swift
//  Semana4-A
//
//  Created by Mac21 on 6/04/24.
//

import Foundation

class Biblioteca {
    var libros: [Libro]
    
    init(libros: [Libro]) {
        self.libros = libros
    }
    
    func BuscarTitulo (titulo: String) -> [Libro]{
        return libros.filter{$0.titulo.lowercased().contains(titulo.lowercased())}
    }
    
    func BuscarAutor (autor: String) -> [Libro]{
        return libros.filter{$0.autor.lowercased().contains(autor.lowercased())}
    }
    
    func BuscarGenero (genero: String) -> [Libro]{
        return libros.filter{$0.genero.lowercased().contains(genero.lowercased())}
    }
    
    func PrestarLibro (titulo: String) -> Bool {
        if let index = libros.firstIndex(where: { $0.titulo.lowercased() ==
            titulo.lowercased() && $0.estado }) {
            libros[index].estado = false
            return true
        }
        return false
    }
    
    func DevolverLibro (titulo: String) -> Bool {
        if let index = libros.firstIndex(where: { $0.titulo.lowercased() ==
            titulo.lowercased() && !$0.estado }) {
            libros[index].estado = true
            return true
        }
        return false
    }
    
    func MostrarLibrosDisponibles() {
        for libro in libros where libro.estado {
            print("Titulo: \(libro.titulo)")
            print("Autor: \(libro.autor)")
            print("Genero: \(libro.genero)")
            print("")
        }
    }
}

