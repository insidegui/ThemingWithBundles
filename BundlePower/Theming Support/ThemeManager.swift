//
//  ThemeManager.swift
//  BundlePower
//
//  Created by Guilherme Rambo on 02/07/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let currentThemeDidChange = Notification.Name("CurrentThemeDidChange")
}

final class ThemeManager {

    private static let defaultThemeName = "Light"

    static let `default` = ThemeManager()

    var currentTheme: Theme {
        didSet {
            registerAppearance()

            NotificationCenter.default.post(name: .currentThemeDidChange, object: self)
        }
    }

    init() {
        do {
            self.currentTheme = try Theme(name: ThemeManager.defaultThemeName)
            registerAppearance()
        } catch {
            fatalError(String(describing: error))
        }
    }

    private func registerAppearance() {
        UIWindow.appearance().backgroundColor = currentTheme.backgroundColor
        UIWindow.appearance().tintColor = currentTheme.tintColor
        UITableView.appearance().backgroundColor = currentTheme.backgroundColor
        UITableViewCell.appearance().backgroundColor = currentTheme.backgroundColor
        UIButton.appearance().tintColor = currentTheme.tintColor

        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().isOpaque = true
        UINavigationBar.appearance().backgroundColor = currentTheme.backgroundColor
        UINavigationBar.appearance().barTintColor = currentTheme.backgroundColor

        if let textColor = currentTheme.primaryTextColor {
            let attrs: [NSAttributedString.Key: Any] = [.foregroundColor: textColor]
            UINavigationBar.appearance().titleTextAttributes = attrs
        }

        UISearchBar.appearance().backgroundColor = currentTheme.backgroundColor
        UISearchBar.appearance().barTintColor = currentTheme.backgroundColor

        UITableView.appearance().separatorColor = currentTheme.separatorColor

        UILabel.appearance().textColor = currentTheme.primaryTextColor

        invalidateViews()
    }

    private func invalidateViews() {
        UIApplication.shared.windows.forEach { window in
            window.rootViewController?.setNeedsStatusBarAppearanceUpdate()
            window.rootViewController?.children.forEach({ $0.setNeedsStatusBarAppearanceUpdate() })

            window.subviews.forEach { view in
                view.removeFromSuperview()
                window.addSubview(view)
            }
        }
    }

}
