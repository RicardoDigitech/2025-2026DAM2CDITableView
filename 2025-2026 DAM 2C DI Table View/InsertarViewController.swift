//
//  InsertarViewController.swift
//  2025-2026 DAM 2C DI Table View
//
//  Created by Ricardo on 7/1/26.
//

import UIKit

class InsertarViewController: UIViewController {
    
    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtContenido: UITextField!
    
    var delegate: ObtenerDatosProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnInsertar(_ sender: Any) {
        let titulo = txtTitulo.text!
        let contenido = txtContenido.text!
        
        let tarea = TareaModel(titulo: titulo, contenido: contenido)
        
        delegate?.obtener(dato: tarea)
        
        self.navigationController?.popViewController(animated: true)
    }
}
