//
//  AppDelegate.swift
//  BundlePower
//
//  Created by Guilherme Rambo on 02/07/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        let lightConfig = ThemeConfiguration(statusBarStyle: .default)
//        let darkConfig = ThemeConfiguration(statusBarStyle: .lightContent)
//
//        let encoder = PropertyListEncoder()
//        encoder.outputFormat = .binary
//
//        let encodedLight = try! encoder.encode(lightConfig)
//
//        let encoder2 = PropertyListEncoder()
//        encoder2.outputFormat = .binary
//
//        let encodedDark = try! encoder2.encode(darkConfig)
//
//        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
//        let lightURL = URL(fileURLWithPath: path).appendingPathComponent("ConfigurationLight.plist")
//        let darkURL = URL(fileURLWithPath: path).appendingPathComponent("ConfigurationDark.plist")
//        try! encodedLight.write(to: lightURL)
//        try! encodedDark.write(to: darkURL)

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

