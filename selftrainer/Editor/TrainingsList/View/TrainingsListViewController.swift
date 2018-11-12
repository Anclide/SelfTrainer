//
//  TrainingsListTrainingsListViewController.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

import UIKit

class TrainingsListViewController: UIViewController, TrainingsListViewInput {

    var output: TrainingsListViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: TrainingsListViewInput
    func setupInitialState() {
    }
}
