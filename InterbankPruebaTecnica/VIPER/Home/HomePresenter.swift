//
//  HomePresenter.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit
import JGProgressHUD

// MARK: - HomePresenter
final class HomePresenter {
    internal var interactor: HomeInteractorProtocol?
    internal var router: HomeRouterProtocol?
    internal weak var view: HomeViewProtocol?
    
    
    private let loader = JGProgressHUD(style: .light)
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

public class Utils{
    static let baseUrl = "https://gorest.co.in/public/v1/posts"
    public func showSimpleAlert(titulo: String, mensaje: String, vc: UIViewController, okBtn: String = "Aceptar"){
        let alertOffline = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alertOffline.addAction(UIAlertAction(title: okBtn, style: .default, handler: nil))
        vc.present(alertOffline, animated: true, completion: nil)
    }
}
