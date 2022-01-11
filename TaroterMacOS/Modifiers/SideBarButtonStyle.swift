//
//  SideBarButtonStyle.swift
//  TaroterMacOS
//
//  Created by Jakub Dąbrowski on 25/12/2021.
//

import SwiftUI

/// The modifier used to style the buttons displayed on the SideBar.
struct SideBarButtonStyle: ViewModifier {
    let isSelected: Bool
    
    var background: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.accentColor)
            .transition(.move(edge: .leading))
    }
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(5)
            .foregroundColor(isSelected ? .white : .primary)
            .background(isSelected ? background : nil)
    }
}

extension View {
    func sideBarButtonStyle(isSelected: Bool) -> some View {
        modifier(SideBarButtonStyle(isSelected: isSelected))
    }
}
