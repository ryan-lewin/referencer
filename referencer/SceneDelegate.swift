//
//  SceneDelegate.swift
//  referencer
//
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // Declares SpiderDirectory for use in app
    var spiderDir = SpiderDirectory(spiders: [])

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        
        // Dummy data to populate app until JSON implemented
        spiderDir.addSpider(name: "Red-Back",
                          scientificName: "Latrodectus hasselti",
                          family: "Latrodectus",
                          genus: "Theridiidae",
                          dangerLevel: "Highly Dangerous",
                          picURL: "https://images.theconversation.com/files/114206/original/image-20160308-15308-128ge6u.jpg?ixlib=rb-1.1.0&q=30&auto=format&w=600&h=432&fit=crop&dpr=2")
        
        spiderDir.addSpider(name: "Funnel Web",
                          scientificName: "Atrax robustus",
                          family: "Hexathelidae",
                          genus: "Atrax",
                          dangerLevel: "Highly Dangerous",
                          picURL: "https://cdn.mos.cms.futurecdn.net/mxk67kpESuQmz5ewBHJ8r3-1200-80.jpg")
        
        spiderDir.addSpider(name: "White-Tail Spider",
                          scientificName: "Atrax robustus",
                          family: "Lamponidae",
                          genus: "Lampona",
                          dangerLevel: "Highly Dangerous",
                          picURL: "https://lh5.googleusercontent.com/proxy/18ADrih7vtbm6KsTshb8VaupTMJQ08q9L767Es5pnguDQ_yjErwQ0in6vgwRQcZnRCDit9R6TcTl3l4dxNoqGknzgLXD54EIC8GvwAIF68k5F1foEQ")
        
        spiderDir.addSpider(name: "Mouse Spider",
                          scientificName: "Atrax robustus",
                          family: "Actinopodidae",
                          genus: "Missulena",
                          dangerLevel: "Painful Bite",
                          picURL: "https://biomedicalsciences.unimelb.edu.au/__data/assets/image/0006/2777370/Mouse-spider.jpg")
        
        spiderDir.addSpider(name: "Huntsman",
                          scientificName: "Atrax robustus",
                          family: "Sparassidae",
                          genus: "Isopoda",
                          dangerLevel: "Low Risk",
                          picURL: "https://lirp-cdn.multiscreensite.com/2ace1129/dms3rep/multi/opt/white-tail-spider-640w.jpg")
        
        let contentView = ContentView(spiderDir: spiderDir)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

