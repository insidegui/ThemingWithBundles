//
//  Theme+Colors.swift
//  BundlePower
//
//  Created by Guilherme Rambo on 02/07/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

enum ColorKey: String {
    case background
    case primaryText
    case tint
    case separator
    case selectionBackground
}

extension Theme {

    private func color(with key: ColorKey) -> UIColor? {
        return UIColor(named: key.rawValue, in: bundle, compatibleWith: nil)
    }

    var backgroundColor: UIColor? {
        return color(with: .background)
    }

    var primaryTextColor: UIColor? {
        return color(with: .primaryText)
    }

    var tintColor: UIColor? {
        return color(with: .tint)
    }

    var separatorColor: UIColor? {
        return color(with: .separator)
    }

    var selectionBackgroundColor: UIColor? {
        return color(with: .selectionBackground)
    }

    var statusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle(rawValue: config.statusBarStyle) ?? .default
    }

}
