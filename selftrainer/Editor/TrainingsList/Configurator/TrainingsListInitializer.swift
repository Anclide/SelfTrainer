//
//  TrainingsListTrainingsListInitializer.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

import UIKit

class TrainingsListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var trainingslistViewController: TrainingsListViewController!

    override func awakeFromNib() {

        let configurator = TrainingsListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: trainingslistViewController)
    }

}
