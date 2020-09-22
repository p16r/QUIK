//
//  SceneDelegate.swift
//  QUIK
//
//  Created by Prathamesh Kowarkar on 23/09/20.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var shortcutItem: UIApplicationShortcutItem? = nil

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        self.shortcutItem = connectionOptions.shortcutItem
    }

    func windowScene(
        _ windowScene: UIWindowScene,
        performActionFor shortcutItem: UIApplicationShortcutItem,
        completionHandler: @escaping (Bool) -> Void
    ) {
        self.shortcutItem = shortcutItem
        completionHandler(true)
    }

    func sceneDidBecomeActive(_ scene: UIScene) {

        guard let shortcutItem = self.shortcutItem else { return }

        let notification = Notification(name: .shortcutItem, object: shortcutItem)
        NotificationCenter.default.post(notification)
        self.shortcutItem = nil
    }

}

