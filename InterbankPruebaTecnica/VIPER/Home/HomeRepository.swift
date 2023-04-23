//
//  HomeRepository.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

// MARK: - HomeRepository
final class HomeRepository: HomeRepositoryProtocol {
	var localDataSource: HomeLocalDataSourceProtocol?
    var cloudDataSource: HomeCloudDataSourceProtocol?

    // MARK: - Inits
    init(localDataSource: HomeLocalDataSourceProtocol?, cloudDataSource: HomeCloudDataSourceProtocol?) {
        self.localDataSource = localDataSource
        self.cloudDataSource = cloudDataSource
    }
}
