//
//  ContentView.swift
//  QUIK
//
//  Created by Prathamesh Kowarkar on 22/09/20.
//

import Combine
import SwiftUI

struct ContentView: View {

    @Environment(\.shortcutItem) var shortcut: UIApplicationShortcutItem?

    var body: some View {
        Text(String(describing: shortcut?.localizedTitle))
            .padding()
    }

}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }

}
