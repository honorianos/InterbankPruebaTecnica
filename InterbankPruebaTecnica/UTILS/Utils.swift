//
//  Utils.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//

import Foundation
import UIKit
public class Utils{
    static let baseUrl = "https://gorest.co.in/public/v1/posts"
    public func showSimpleAlert(titulo: String, mensaje: String, vc: UIViewController, okBtn: String = "Aceptar"){
        let alertOffline = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alertOffline.addAction(UIAlertAction(title: okBtn, style: .default, handler: nil))
        vc.present(alertOffline, animated: true, completion: nil)
    }
}
