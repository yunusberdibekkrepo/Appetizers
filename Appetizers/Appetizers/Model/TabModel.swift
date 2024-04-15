//
//  TabModel.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import Foundation
import SwiftUI

struct TabModel {
    let title: String
    let icon: String
}

struct TabItem: Identifiable {
    let id = NSUUID().uuidString
    let page: AnyView
    let model: TabModel

    static let tabItems: [TabItem] = [
            .init(page: AnyView(AppetizerListView()), model: TabModel(title: "Home", icon: "house")),
            .init(page: AnyView(AccountView()), model: TabModel(title: "Account", icon: "person")),
            .init(page: AnyView(OrderView()), model: TabModel(title: "Orders", icon: "bag"))
    ]
}
