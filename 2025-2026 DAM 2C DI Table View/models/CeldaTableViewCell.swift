//
//  CeldaTableViewCell.swift
//  2025-2026 DAM 2C DI Table View
//
//  Created by Ricardo on 7/1/26.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblContenido: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
