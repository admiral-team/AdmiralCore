//
//  SizeAwareViewModifier.swift
//  AdmiralSwiftUI
//
//  Created on 19.04.2021.
//

import SwiftUI

// A custom struct representing a preference key for storing CGRect values.
public struct RectPreferenceKey: PreferenceKey {
    public typealias Value = CGRect
    public static var defaultValue: CGRect = .zero
    public static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
