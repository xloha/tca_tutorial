//
//  TCA_tutorialApp.swift
//  TCA_tutorial
//
//  Created by xloha on 3/24/25.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_tutorialApp: App {
    static let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            ContactsView(store: TCA_tutorialApp.store)
//            AppView(store: TCA_tutorialApp.store)
        }
    }
}
