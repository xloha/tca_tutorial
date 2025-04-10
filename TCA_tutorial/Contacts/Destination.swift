//
//  Destination.swift
//  TCA_tutorial
//
//  Created by xloha on 4/10/25.
//

import ComposableArchitecture

extension ContactsFeature {
    @Reducer
    enum Destination {
        case addContact(AddContactFeature)
        case alert(AlertState<ContactsFeature.Action.Alert>)
    }
}

extension ContactsFeature.Destination.State: Equatable {}
