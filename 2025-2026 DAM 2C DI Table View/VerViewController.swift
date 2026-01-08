//
//  VerViewController.swift
//  2025-2026 DAM 2C DI Table View
//
//  Created by Ricardo on 8/1/26.
//

import UIKit

class VerViewController: UIViewController {
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblContenido: UILabel!
    
    var tarea: TareaModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitulo.text = tarea.titulo
        lblContenido.text = tarea.contenido
    }
}
