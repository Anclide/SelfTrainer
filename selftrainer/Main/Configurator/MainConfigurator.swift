//
//  MainMainConfigurator.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

import UIKit

class MainModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? MainViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MainViewController) {

        let router = MainRouter()

        let presenter = MainPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = MainInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
