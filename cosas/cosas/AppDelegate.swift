//
//  cosasApp.swift
//  cosas
//
//  Created by Ximena Puig
//

import UIKit
import ParseSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // TODO: Pt 1 - Initialize Parse SDK
        ParseSwift.initialize(applicationId: "mTeBKyZm94FmEjE2ZEbRtJje0M724k8mIEmiGVvD",
                              clientKey: "Hy1bfVhuruSXLXDf34tulirXRISjtnUfiHvRzeMU",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)

        // TODO: Pt 1: - Instantiate and save a test parse object to your server
        // https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L121

//        var score = GameScore()
//        score.playerName = "Kingsley"
//        score.points = 13
//
//        // Save asynchronously (preferred way) - Performs work on background queue and returns to specified callbackQueue.
//        // If no callbackQueue is specified it returns to main queue.
//        score.save { result in
//            switch result {
//            case .success(let savedScore):
//                print("✅ Parse Object SAVED!: Player: \(String(describing: savedScore.playerName)), Score: \(String(describing: savedScore.points))")
//            case .failure(let error):
//                assertionFailure("Error saving: \(error)")
//            }
//        }

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
