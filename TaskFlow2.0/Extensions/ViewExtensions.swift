//
//  ViewExtensions.swift
//  TaskFlow2.0
//
//  Created by Joseph DeWeese on 1/26/25.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hSpacing(_ alignment: Alignment = .center) -> some View {
        self
        .frame(maxWidth: .infinity, alignment: alignment)
    }
    @ViewBuilder
    func vSpacing(_ alignment: Alignment = .center) -> some View {
        self
        .frame(maxHeight: .infinity, alignment: alignment)
    }
    @available(iOSApplicationExtension, unavailable)
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        return .zero
    }
    func format(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    @ViewBuilder
    func applyPaddedBackground(_ radius: CGFloat, hPadding: CGFloat = 15, vPadding: CGFloat = 15) -> some View {
        self
            .padding(.horizontal, hPadding)
            .padding(.vertical, vPadding)
            .background(.background, in: .rect(cornerRadius: radius))
    }
    
    @ViewBuilder
    func disableWithOpacity(_ status: Bool) -> some View {
        self
            .disabled(status)
            .opacity(status ? 0.5 : 1)
    }
    
    @ViewBuilder
    func opacityShadow(_ color: Color, opacity: CGFloat, radius: CGFloat) -> some View {
        self
            .shadow(color: color.opacity(opacity), radius: radius)
    }
    var appTint: Color {
        return Constants.shared.tintColor
    }
}


