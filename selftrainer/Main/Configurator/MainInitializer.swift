//
//  MainMainInitializer.swift
//  selftrainer
//
//  Created by victorbogatyrev on 14/10/2018.
//  Copyright © 2018 victorbogatyrev. All rights reserved.
//

import UIKit

class MainModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var mainViewController: MainViewController!

    override func awakeFromNib() {

        let configurator = MainModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: mainViewController)
    }

}
