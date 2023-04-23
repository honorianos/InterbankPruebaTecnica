//
//  HomeViewController.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import Foundation
import JGProgressHUD

struct StructMoneda : Codable {
    var data: [itemsMoneda]
}

public struct itemsMoneda : Codable {
    var id: Int
    var title: String
    var body: String
}

class sMoneda {
    var codigo: String = ""
    var tittle: String = ""
    var body: String = ""}


import UIKit

// MARK: - HomeViewController
class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    public var username = ""
    private var monedas: [itemsMoneda] = []
    private var filteredData: [itemsMoneda] = []
    private let loader = JGProgressHUD(style: .light)
    var presenter: HomePresenterProtocol?
    private let utils = Utils()
    
    // MARK: Object lifecycle
    init() {
        super.init(nibName: String(describing: HomeViewController.self),
                   bundle: Bundle(for: HomeViewController.classForCoder()))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Missing presenter")
    }
}

// MARK: View Life Cycle
extension HomeViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        initTableSetup()
        loadData()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.systemBackground.cgColor
    }
}

// MARK: HomeViewProtocol
extension HomeViewController: HomeViewProtocol {
    func showSimpleAlert(titulo: String, mensaje: String) {
        self.utils.showSimpleAlert(titulo: titulo, mensaje: mensaje, vc: self)
    }
    func showLoader() {
        self.loader.show(in: self.view)
    }
    func hideLoader() {
        self.loader.dismiss()
    }
}

// MARK: HomeViewTableView
extension HomeViewController:  UISearchBarDelegate  {
    func initTableSetup() {
        tableView.tableHeaderView = searchBar
        tableView.register(UINib(nibName: "HomeCell", bundle: Bundle.main), forCellReuseIdentifier: "HomeCell")
    }
    
    // MARK: - User actions
    @objc func routeExit(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: - Data methods
    func loadData() {
        monedas.removeAll()
        self.presenter?.getDataRecetas()
    }
    
    // MARK: - Refresh methods
    func refreshTableView() {
        tableView.reloadData()
    }
    func presentGetMonedas(monedas: [itemsMoneda]) {
        self.monedas = monedas
        self.filteredData = monedas
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        cell.bindData(data: filteredData[indexPath.row])
        return cell
    }
}

// MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presenter?.goToDetailViewController(viewData: filteredData[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    // MARK: - UISearchControllerDelegate
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText.isEmpty {
            filteredData = monedas
        }
        else {
            for i in monedas {
                if i.title.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(i)
                }
            }
        }
        self.tableView.reloadData()
    }
}


