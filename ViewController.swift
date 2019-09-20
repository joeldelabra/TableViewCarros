//
//  ViewController.swift
//  TableViewCarros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var carros : [Carro] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carros.append(Carro(Placa: "XXX123", Modelo: "Carro1", Marca: "Nissan", Año: "1998"))
        
        carros.append(Carro(Placa: "XXX165", Modelo: "Carro2", Marca: "Nissan", Año: "2000"))
        
        carros.append(Carro(Placa: "XXX123", Modelo: "Carro3", Marca: "Nissan", Año: "1988"))
        
        carros.append(Carro(Placa: "XXX123", Modelo: "Carro4", Marca: "Nissan", Año: "2010"))
        
    }
    
    //

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Oulets") as? OutlesCarros
        
        celda?.lblPlaca.text = carros[indexPath.row].Placa
        celda?.lblMarca.text = carros[indexPath.row].Marca
        celda?.lblModelo.text = carros[indexPath.row].Modelo
        celda?.lblAño.text = carros[indexPath.row].Año
        
        
        return celda!
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
   
}

