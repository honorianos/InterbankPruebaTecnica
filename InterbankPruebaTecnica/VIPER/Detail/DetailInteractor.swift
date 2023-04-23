//
//  DetailInteractor.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

// MARK: - DetailInteractor
final class DetailInteractor: DetailInteractorProtocol {
	var repository: DetailRepositoryProtocol?
    weak var delegate: DetailInteractorDelegate?

    // MARK: - Inits
    init(repository: DetailRepositoryProtocol?) {
        self.repository = repository
    }
}
