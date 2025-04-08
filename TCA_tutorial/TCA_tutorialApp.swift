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
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_tutorialApp.store)
        }
    }
}
