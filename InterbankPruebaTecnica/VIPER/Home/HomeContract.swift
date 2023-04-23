//
//  HomeContract.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit

// MARK: - Factory
protocol HomeFactoryProtocol: AnyObject {
    static func initialize() -> HomeViewController
}

// MARK: - Interactor
protocol HomeInteractorProtocol: AnyObject {
    var repository: HomeRepositoryProtocol? { get set }
    var delegate: HomeInteractorDelegate? { get set }
    func getData(completion: @escaping (Result<DataResponseSuccess, DataResponseError>) -> Void)
}

// MARK: - View
protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol? { get set }
    func presentGetMonedas(monedas: [itemsMoneda])
    func showLoader()
    func hideLoader()
    func showSimpleAlert(titulo: String, mensaje: String)
}

// MARK: - Router
protocol HomeRouterProtocol: AnyObject {
    var view: UIViewController? { get set }
    func goToDetailViewController(viewData: ViewDataDetail)
}

// MARK: - Presenter
protocol HomePresenterProtocol: AnyObject {
    var interactor: HomeInteractorProtocol? { get set }
    var router: HomeRouterProtocol? { get set }
    var view: HomeViewProtocol? { get set }
    func getDataRecetas()
    func goToDetailViewController(viewData: itemsMoneda)
}

// MARK: - InteractorOutput
protocol HomeInteractorDelegate: AnyObject {
}
