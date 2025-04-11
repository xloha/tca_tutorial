//
//  ContactDetailView.swift
//  TCA_tutorial
//
//  Created by xloha on 4/11/25.
//

import ComposableArchitecture
import SwiftUI

struct ContactDetailView: View {
    @Bindable var store: StoreOf<ContactDetailFeature>

    var body: some View {
        Form {
            Button("Delete") {
                store.send(.deleteButtonTapped)
            }
        }
        .navigationTitle(Text(store.contact.name))
        .alert($store.scope(state: \.alert, action: \.alert))
    }
}

#Preview {
    NavigationStack {
        ContactDetailView(
            store: Store(
                initialState: ContactDetailFeature.State(
                    contact: Contact(id: UUID(), name: "Blob")
                )
            ) {
                ContactDetailFeature()
            }
        )
    }
}
