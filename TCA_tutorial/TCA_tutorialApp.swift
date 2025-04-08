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
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_tutorialApp.store)
        }
    }
}
