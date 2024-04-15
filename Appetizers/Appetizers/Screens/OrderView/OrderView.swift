//
//  OrderView.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items, id: \.id) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                            .onDelete(perform: order.deleteItems)
                    }
                        .listStyle(.plain)

                    Button {

                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") -Place Older")
                    }
                        .modifier(StandardButtonStyle())
                        .padding(.bottom, 25)
                }

                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add on appetizer!")
                }
            }
                .navigationTitle("🏷️ Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
