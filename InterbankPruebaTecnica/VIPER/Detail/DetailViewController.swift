//
//  DetailViewController.swift
//  InterbankPruebaTecnica
//
//  Created by Oswaldo Escobar on 23/04/23.
//  Copyright (c) 2023 Oswaldo FIF. All rights reserved.

import UIKit
import Foundation
struct ViewDataDetail {
    var codigo:Int = 0
    var tittle: String = ""
    var body: String = ""
}

// MARK: - DetailViewController
final class DetailViewController: UIViewController {
    var viewData: ViewDataDetail?
	var presenter: DetailPresenterProtocol?

    @IBOutlet weak var code: UIButton!
    @IBOutlet weak var tittle: UITextField!
    @IBOutlet weak var body: UITextField!
    
    // MARK: Object lifecycle
    init() {
       super.init(nibName: String(describing: DetailViewController.self),
        bundle: Bundle(for: DetailViewController.classForCoder()))
    }

    required init?(coder aDecoder: NSCoder) {
       fatalError("Missing presenter")
    }
}

// MARK: View Life Cycle
extension DetailViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    func setData() {
        code.setTitle(String(viewData?.codigo ?? 0), for: .normal)
        tittle.text = viewData?.tittle
        body.text = viewData?.body
    }
}

// MARK: DetailViewProtocol
extension DetailViewController: DetailViewProtocol {
}
