//
//  CustomModifiers.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 3/1/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
    
}
