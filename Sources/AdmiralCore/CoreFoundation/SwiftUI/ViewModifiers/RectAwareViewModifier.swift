//
//  SizeAwareViewModifier.swift
//  AdmiralSwiftUI
//
//  Created on 19.04.2021.
//

import SwiftUI

@available(iOS 14.0, *)
// A ViewModifier that observes changes in the frame of the view and updates the bound CGRect value accordingly.
public struct RectAwareViewModifier: ViewModifier {

    @Binding private var viewRect: CGRect

    public init(viewRect: Binding<CGRect>) {
        self._viewRect = viewRect
    }

    public func body(content: Content) -> some View {

            return content
                .background(
                    GeometryReader { geometry -> Color in
                        guard self.viewRect != geometry.frame(in: .global) else {
                            return Color.clear
                        }
                        DispatchQueue.main.async {
                            self.viewRect = geometry.frame(in: .global)
                        }
                        return Color.clear
                    }
                )
                .eraseToAnyView()
        }
}
