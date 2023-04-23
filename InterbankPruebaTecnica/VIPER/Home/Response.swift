//
//  Response.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//

import Foundation

struct DataResponseSuccess: Codable {
    let arrayData: [itemsMoneda]
}
struct DataResponseError: Codable,Error {
    let msg: String
}
