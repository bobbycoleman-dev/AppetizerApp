//
//  AppetizerAppApp.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 2/28/23.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
