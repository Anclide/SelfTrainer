//
//  TrainingsListTrainingsListConfigurator.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

import UIKit

class TrainingsListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TrainingsListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TrainingsListViewController) {

        let router = TrainingsListRouter()

        let presenter = TrainingsListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TrainingsListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
