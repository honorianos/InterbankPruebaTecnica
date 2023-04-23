//
//  FactoryViewTest.swift
//  InterbankPruebaTecnicaTests
//
//  Created by Oswaldo Escobar on 23/04/23.
//

import XCTest
@testable import InterbankPruebaTecnica

class FactoryTest: XCTestCase {
    
    func testFactoryHomeInit() {
        let view = HomeFactory.initialize()
        XCTAssertNotNil(view)
    }
    
    func testFactoryDetailInit() {
        let view = DetailFactory.initialize()
        view.viewData = ViewDataDetail(codigo: Int(), tittle: String(), body: String())
        XCTAssertNotNil(view)
    }
    
}
