//
//  HomeRouter.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit

// MARK: - HomeRouter
final class HomeRouter: HomeRouterProtocol {
    weak var view: UIViewController?
    func goToDetailViewController(viewData: ViewDataDetail) {
        let vc = DetailFactory.initialize()
        vc.viewData = viewData
        view?.navigationController?.pushViewController(vc, animated: true)
    }
}
