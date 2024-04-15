//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()

    var body: some Scene {
        WindowGroup {
            HomeTabView()
                .environmentObject(order)
        }
    }
}
