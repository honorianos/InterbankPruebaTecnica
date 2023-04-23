//
//  DetailContract.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit

// MARK: - Factory
protocol DetailFactoryProtocol: AnyObject {
    static func initialize() -> DetailViewController
}

// MARK: - Interactor
protocol DetailInteractorProtocol: AnyObject {
    var repository: DetailRepositoryProtocol? { get set }
    var delegate: DetailInteractorDelegate? { get set }
}

// MARK: - View
protocol DetailViewProtocol: AnyObject {
    var presenter: DetailPresenterProtocol? { get set }
}

// MARK: - Router
protocol DetailRouterProtocol: AnyObject {
    var view: UIViewController? { get set }
}

// MARK: - Presenter
protocol DetailPresenterProtocol: AnyObject {
    var interactor: DetailInteractorProtocol? { get set }
    var router: DetailRouterProtocol? { get set }
    var view: DetailViewProtocol? { get set }
}

// MARK: - InteractorOutput
protocol DetailInteractorDelegate: AnyObject {
}
