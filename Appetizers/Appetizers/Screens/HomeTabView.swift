//
//  ContentView.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import SwiftUI

struct HomeTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                Label("Home", systemImage: "house")
            }

            AccountView()
                .tabItem {
                Label("Account", systemImage: "person")
            }

            OrderView()
                .tabItem {
                Label("Order", systemImage: "bag")
            }
                .badge(order.items.count)
        }
            .tint(Color("brandPrimary"))
    }
}

private struct TabItemView: View {
    let model: TabModel
    var body: some View {
        VStack {
            Image(systemName: model.icon)
            Text(model.title)
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}

/*
 body: some View {
     TabView {
         AppetizerListView()
             .tabItem {
             Image(systemName: "house")
             Text("Home")
         }

         AccountView()
             .tabItem {
             Image(systemName: "person")
             Text("Account")
         }

         OrderView()
             .tabItem {
             Image(systemName: "bag")
             Text("Order")
         }
     }
 */
