//
//  ViewController.swift
//  Semana4-A
//
//  Created by Mac21 on 6/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var brnBuscarTitulo: UIButton!
    
    @IBOutlet weak var btnBuscarAutor: UIButton!
    
    @IBOutlet weak var btnBuscarGenero: UIButton!
    
    @IBOutlet weak var btnPrestarLibro: UIButton!
    
    @IBOutlet weak var btnDevolverLibro: UIButton!
    
    let biblioteca = Biblioteca(libros: [Libro(titulo: "Informatica 1", autor: "Luis Valta", genero: "Narrativo")])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnTapBuscarTitulo(_ sender: Any) {
        let result = biblioteca.BuscarTitulo(titulo: "Informatica 1")
        for libro in result {
            print("libro con titulo \(libro.titulo) encontrado")
        }
    }
    
    @IBAction func OnTapBuscarAutor(_ sender: Any) {
        let result = biblioteca.BuscarAutor(autor: "Luis Valta")
        for libro in result {
            print("libro con autor \(libro.autor) encontrado")
        }
    }
    
    @IBAction func OnTapBuscarGenero(_ sender: Any) {
        let result = biblioteca.BuscarGenero(genero: "Narrativo")
        for libro in result {
            print("libro con genero \(libro.genero) encontrado")
        }
        
    }
    
    @IBAction func onTapPrestar(_ sender: Any) {
        let buscartit = "Informatica 1"
        if biblioteca.PrestarLibro(titulo: buscartit){
            print("libro con titulo \(buscartit) se presto")
        } else {
            print("libro con titulo \(buscartit) no se presto")
        }
    }
    
    @IBAction func onTapDevolver(_ sender: Any) {
        let buscartit = "Informatica 1"
        if biblioteca.DevolverLibro(titulo: buscartit){
            print("libro con titulo \(buscartit) se devolvio")
        } else {
            print("libro con titulo \(buscartit) no se devolvio")
        }
    }
    
    
    
}

