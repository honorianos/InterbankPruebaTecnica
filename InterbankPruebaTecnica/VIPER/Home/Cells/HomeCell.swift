//
//  HomeCell.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    
    func bindData(data: itemsMoneda) {
        lblName.text = String("\(data.id) - valor: \(String(data.title))")
    }
}
