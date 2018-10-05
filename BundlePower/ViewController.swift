//
//  ViewController.swift
//  BundlePower
//
//  Created by Guilherme Rambo on 02/07/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var themeManager: ThemeManager = .default

    @IBOutlet weak var lightCell: UITableViewCell!
    @IBOutlet weak var darkCell: UITableViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for r in 0..<tableView.numberOfRows(inSection: 0) {
            tableView.cellForRow(at: IndexPath(row: r, section: 0))?.accessoryType = .none
        }

        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        tableView.deselectRow(at: indexPath, animated: true)

        let name = indexPath.row == 0 ? "Light" : "Dark"
        themeManager.currentTheme = try! Theme(name: name)
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.selectionStyle = .none
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return themeManager.currentTheme.statusBarStyle
    }

}

