//
//  DetailPresenter.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit

// MARK: - DetailPresenter
final class DetailPresenter {
    internal var interactor: DetailInteractorProtocol?
    internal var router: DetailRouterProtocol?
    internal weak var view: DetailViewProtocol?

    // MARK: - Inits
    init(interactor: DetailInteractorProtocol?, router: DetailRouterProtocol?) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - DetailPresenterProtocol
extension DetailPresenter: DetailPresenterProtocol {
}

// MARK: - DetailInteractorDelegate
extension DetailPresenter: DetailInteractorDelegate {
}
