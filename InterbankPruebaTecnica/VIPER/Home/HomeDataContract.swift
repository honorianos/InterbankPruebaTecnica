//
//  HomeDataContract.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import Foundation
import Alamofire
// MARK: - Local Data Source
protocol HomeLocalDataSourceProtocol {
}

// MARK: - Cloud Data Source
protocol HomeCloudDataSourceProtocol {
    func getData( completion: @escaping HomeCloudDataSource.QueryResult)
}

// MARK: - Repository
protocol HomeRepositoryProtocol {
    var localDataSource: HomeLocalDataSourceProtocol? { get set }
    var cloudDataSource: HomeCloudDataSourceProtocol? { get set }
}
