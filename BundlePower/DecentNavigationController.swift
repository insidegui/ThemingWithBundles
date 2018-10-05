//
//  DecentNavigationController.swift
//  BundlePower
//
//  Created by Guilherme Rambo on 02/07/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

class DecentNavigationController: UINavigationController {

    override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }

}
