//
//  QUIKApp.swift
//  QUIK
//
//  Created by Prathamesh Kowarkar on 22/09/20.
//

import Combine
import SwiftUI

@main
struct QUIKApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    @State var shortcut: UIApplicationShortcutItem? = nil

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.shortcutItem, shortcut)
                .onReceive(
                    NotificationCenter.default.publisher(for: .shortcutItem)
                        .compactMap { $0.object as? UIApplicationShortcutItem }
                ) {
                    self.shortcut = $0
                }
        }
    }

}
