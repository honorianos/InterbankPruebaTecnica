//
//  HomeFactory.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

// MARK: - HomeFactory
final class HomeFactory: HomeFactoryProtocol {
    static func initialize() -> HomeViewController {
        let localDataSource = HomeLocalDataSource()
        let cloudDataSource = HomeCloudDataSource()
        let repository = HomeRepository(localDataSource: localDataSource, cloudDataSource: cloudDataSource)
        let interactor = HomeInteractor(repository: repository)

        let router = HomeRouter()

        let presenter = HomePresenter(interactor: interactor, router: router)

        let viewController = HomeViewController()

        presenter.view = viewController
        viewController.presenter = presenter
        router.view = viewController
        interactor.delegate = presenter as HomeInteractorDelegate

        return viewController
    }
}
