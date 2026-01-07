//
//  ViewController.swift
//  2025-2026 DAM 2C DI Table View
//
//  Created by Ricardo on 7/1/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ObtenerDatosProtocol {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tareaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! CeldaTableViewCell
        
        tarea = tareaList[indexPath.row]
        
        celda.lblTitulo.text = tarea.titulo
        celda.lblContenido.text = tarea.contenido
        
        return celda
    }
    
    @IBOutlet weak var tareaTable: UITableView!
    
    var tareaList: [TareaModel]!
    var tarea: TareaModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tareaList = []
        
        // Si no hubiera hecho lo de arrastrar
        tareaTable.delegate = self
        tareaTable.dataSource = self
    }
    
    func obtener(dato: TareaModel) {
        tarea = dato
        tareaList.append(tarea)
        tareaTable.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "INSERTAR"){
            let destino = segue.destination as! InsertarViewController
            destino.delegate = self
        }
    }
}
