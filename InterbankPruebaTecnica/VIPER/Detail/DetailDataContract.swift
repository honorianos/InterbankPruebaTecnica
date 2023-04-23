//
//  DetailDataContract.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved. 

// MARK: - Local Data Source
protocol DetailLocalDataSourceProtocol {
}

// MARK: - Cloud Data Source
protocol DetailCloudDataSourceProtocol {
}

// MARK: - Repository
protocol DetailRepositoryProtocol {
    var localDataSource: DetailLocalDataSourceProtocol? { get set }
    var cloudDataSource: DetailCloudDataSourceProtocol? { get set }
}
