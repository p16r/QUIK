//
//  Utils.swift
//  QUIK
//
//  Created by Prathamesh Kowarkar on 22/09/20.
//

import SwiftUI
import Foundation

extension Notification.Name {

    static var shortcutItem: Self = .init("shortcutItem")

}

struct ShortcutEnvironmentKey: EnvironmentKey {

    static var defaultValue: UIApplicationShortcutItem? = nil

}

extension EnvironmentValues {

    var shortcutItem: UIApplicationShortcutItem? {
        get { self[ShortcutEnvironmentKey.self] }
        set { self[ShortcutEnvironmentKey.self] = newValue }
    }

}
