//
//  OrderView.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 2/28/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        // action
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\n Please add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
