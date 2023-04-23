//
//  DetailFactory.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

// MARK: - DetailFactory
final class DetailFactory: DetailFactoryProtocol {
    static func initialize() -> DetailViewController {
        let localDataSource = DetailLocalDataSource()
        let cloudDataSource = DetailCloudDataSource()
        let repository = DetailRepository(localDataSource: localDataSource, cloudDataSource: cloudDataSource)
        let interactor = DetailInteractor(repository: repository)

        let router = DetailRouter()

        let presenter = DetailPresenter(interactor: interactor, router: router)

        let viewController = DetailViewController()

        presenter.view = viewController
        viewController.presenter = presenter
        router.view = viewController
        interactor.delegate = presenter as DetailInteractorDelegate

        return viewController
    }
}
