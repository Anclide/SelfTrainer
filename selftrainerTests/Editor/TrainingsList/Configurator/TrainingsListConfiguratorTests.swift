//
//  TrainingsListTrainingsListConfiguratorTests.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

import XCTest

class TrainingsListModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = TrainingsListViewControllerMock()
        let configurator = TrainingsListModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "TrainingsListViewController is nil after configuration")
        XCTAssertTrue(viewController.output is TrainingsListPresenter, "output is not TrainingsListPresenter")

        let presenter: TrainingsListPresenter = viewController.output as! TrainingsListPresenter
        XCTAssertNotNil(presenter.view, "view in TrainingsListPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in TrainingsListPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is TrainingsListRouter, "router is not TrainingsListRouter")

        let interactor: TrainingsListInteractor = presenter.interactor as! TrainingsListInteractor
        XCTAssertNotNil(interactor.output, "output in TrainingsListInteractor is nil after configuration")
    }

    class TrainingsListViewControllerMock: TrainingsListViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
