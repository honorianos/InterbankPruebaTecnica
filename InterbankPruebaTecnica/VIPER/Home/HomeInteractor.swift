//
//  HomeInteractor.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

// MARK: - HomeInteractor
import UIKit
final class HomeInteractor: HomeInteractorProtocol {
	var repository: HomeRepositoryProtocol?
    weak var delegate: HomeInteractorDelegate?
    private var items = [itemsMoneda]()

    // MARK: - Inits
    init(repository: HomeRepositoryProtocol?) {
        self.repository = repository
    }
    
    func getData(completion: @escaping (Result<DataResponseSuccess, DataResponseError>) -> Void) {
        repository?.cloudDataSource?.getData{ [self] (response) in
            guard let responseData = response?.data else { return}
            let valido = self.parseMonedas(responseData)
            if (valido){
                completion(.success(DataResponseSuccess.init(arrayData: items)))
            }else{
                completion(.failure(DataResponseError(msg: "Error Default")))
            }
        }
        
    }
    func parseMonedas (_ datos: Data)-> Bool {
        do{
            let decoder = JSONDecoder()
            let DataArray = try decoder.decode(StructMoneda.self, from: datos)
            for x in DataArray.data {
                self.items.append(itemsMoneda(id: x.id, title: x.title, body: x.body))
            }
            return true
        } catch {
            print(error)
            return false
        }
    }
}
