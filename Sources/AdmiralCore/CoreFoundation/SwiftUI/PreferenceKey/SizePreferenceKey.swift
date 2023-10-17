//
//  SizeAwareViewModifier.swift
//  AdmiralSwiftUI
//
//  Created on 19.04.2021.
//


import SwiftUI

// A custom struct representing a preference key for storing CGSize values.
public struct SizePreferenceKey: PreferenceKey {
    public typealias Value = CGSize
    public static var defaultValue: CGSize = .zero
    
    public static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        let next = nextValue()
        if next == .zero {
            return
        }
        value = next
    }
}
