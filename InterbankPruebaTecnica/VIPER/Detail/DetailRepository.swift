//
//  DetailRepository.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

// MARK: - DetailRepository
final class DetailRepository: DetailRepositoryProtocol {
	var localDataSource: DetailLocalDataSourceProtocol?
    var cloudDataSource: DetailCloudDataSourceProtocol?

    // MARK: - Inits
    init(localDataSource: DetailLocalDataSourceProtocol?, cloudDataSource: DetailCloudDataSourceProtocol?) {
        self.localDataSource = localDataSource
        self.cloudDataSource = cloudDataSource
    }
}
