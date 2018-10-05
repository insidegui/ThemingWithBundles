//
//  ThemeConfiguration.swift
//  BundlePower
//
//  Created by Guilherme Rambo on 02/07/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

struct ThemeConfiguration: Codable {
    let statusBarStyle: Int

    init(statusBarStyle: Int) {
        self.statusBarStyle = statusBarStyle
    }
}
