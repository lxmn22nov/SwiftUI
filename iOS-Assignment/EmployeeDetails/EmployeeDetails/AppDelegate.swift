//
//  AppDelegate.swift
//  EmployeeDetails
//
//  Created by Laxman Singh Koranga on 14/07/2024.
//
// 1: ViewController() should be replaced with the actual view controller you want to show after the splash screen.
//
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // creating a delay of 03 seconds for SplashScreen.
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // transition to your main screen.
            self.navigateToMainScreen()
        }
        
        return true
    }
    
    func navigateToMainScreen() {
        // instantiate our main view controller and set it as the root view controller.
        let mainViewController = ViewController()   // Replace with our main view controller.
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
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

