//
//  InteractorTest.swift
//  InterbankPruebaTecnicaTests
//
//  Created by Oswaldo Escobar on 23/04/23.
//
//
//  InteractorTest.swift
//  FIFIOSCDAT-Unit-BFColombia-Tests
//
//  Created by Oswaldo Escobar on 25/07/22.
//

import XCTest
@testable import InterbankPruebaTecnica
import Alamofire
class InteractorTest: XCTestCase {
    var interactor: HomeInteractor?
    private var requestExpectation: XCTestExpectation?
    override func setUp() {
        let localDataSource = HomeLocalDataSource()
        let cloudDataSource = HomeCloudDataSource()
        let repository = HomeRepository(localDataSource: localDataSource, cloudDataSource: cloudDataSource)
        self.interactor = HomeInteractor(repository: repository)
    }
   

    func testGetDataSuccess() {
        setUp()
        var accessToken = ""
        requestExpectation = expectation(description: "Obtain token")
        interactor?.getData(completion: { response  in
            switch response {
            case .success(let data):
                accessToken = data.arrayData[0].title
                self.requestExpectation?.fulfill()
            case .failure(let error):
                print(error)
                self.requestExpectation?.fulfill()
            }
        })
        if let requestExpectation = requestExpectation {
            wait(for: [requestExpectation], timeout: 10)
        }
        XCTAssertEqual("Volaticus vetus thesaurus umbra sustineo vigilo coadunatio.", accessToken)
    }
   
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
