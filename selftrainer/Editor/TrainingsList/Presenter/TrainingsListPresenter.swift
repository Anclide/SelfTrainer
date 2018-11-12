//
//  TrainingsListTrainingsListPresenter.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

class TrainingsListPresenter: TrainingsListModuleInput, TrainingsListViewOutput, TrainingsListInteractorOutput {

    weak var view: TrainingsListViewInput!
    var interactor: TrainingsListInteractorInput!
    var router: TrainingsListRouterInput!

    func viewIsReady() {

    }
}
