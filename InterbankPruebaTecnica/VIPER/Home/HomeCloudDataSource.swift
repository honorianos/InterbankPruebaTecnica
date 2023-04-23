//
//  HomeCloudDataSource.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.
//
import Foundation
import Alamofire

// MARK: - HomeCloudDataSource
final class HomeCloudDataSource: HomeCloudDataSourceProtocol {
    public typealias QueryResult = (DataResponse<Any>?) -> ()
    func getData( completion: @escaping QueryResult){
        guard let uri = URL(string: Utils.baseUrl) else { return }
        var request = URLRequest(url: uri)
        request.httpMethod = HTTPMethod.get.rawValue
        Alamofire.request(request).responseJSON{ (response) in
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
            if response.error != nil {
                print(" ERORR** \(response.error!)")
            }
            DispatchQueue.main.async {
                completion(response)
            }
        }
    }
}
