//
//  StrucsDao.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//

import Foundation


struct StructMoneda : Codable {
    var data: [itemsMoneda]
}

public struct itemsMoneda : Codable {
    var id: Int
    var title: String
    var body: String
}

class sMoneda {
    var codigo: String = ""
    var tittle: String = ""
    var body: String = ""}
