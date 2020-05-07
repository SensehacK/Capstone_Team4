//
//  AppDelegate.swift
//  HealthSense
//
//  Created by Sensehack on 3/24/20.
//  Copyright © 2020 Sensehack. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        print("#### App Delegate")
        
        if UserDefaults.standard.bool(forKey: "FirstLaunch") {
            
            print("Default launch")
            Settings.sharedInstance.appRestoreSettings()
//            SettingsStruct.defaultScreen = "default"
            
        } else {
            
            print("First launch")
            Settings.sharedInstance.setAppSettings()
            /*
            SettingsStruct.defaultScreen = "welcome"
            UserDefaults.standard.set(true, forKey: "FirstLaunch")
            UserDefaults.standard.set(1, forKey: "AppOpen")
            */
        }
        
        // Calling Analytics class
        // TODO: Could be moved to lazy class invokation after the initial loading of Screens are done.
        Analytics()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

