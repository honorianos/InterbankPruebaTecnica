//
//  HomePresenter.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit

// MARK: - HomePresenter
final class HomePresenter {
    internal var interactor: HomeInteractorProtocol?
    internal var router: HomeRouterProtocol?
    internal weak var view: HomeViewProtocol?
    private var items = [itemsMoneda]()

    // MARK: - Inits
    init(interactor: HomeInteractorProtocol?, router: HomeRouterProtocol?) {
        self.interactor = interactor
        self.router = router
    }
    func getDataRecetas() {
        self.view?.showLoader()
        interactor?.getData(completion: { response  in
            self.view?.hideLoader()
            switch response {
            case .success(let data):
                self.view?.presentGetMonedas(monedas: data.arrayData)
            case .failure(let error):
                self.view?.showSimpleAlert(titulo: "Atención", mensaje: error.msg)
            }
        })
    }
    func goToDetailViewController(viewData: itemsMoneda) {
        let viewDataPass = ViewDataDetail(
            codigo: viewData.id,
            tittle: viewData.title,
            body: viewData.body
        )
        self.router?.goToDetailViewController(viewData: viewDataPass)
    }
}

// MARK: - HomePresenterProtocol
extension HomePresenter: HomePresenterProtocol {
}

// MARK: - HomeInteractorDelegate
extension HomePresenter: HomeInteractorDelegate {
}

