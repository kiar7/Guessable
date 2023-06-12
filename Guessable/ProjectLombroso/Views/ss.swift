//
//  ss.swift
//  ProjectLombroso
//
//  Created by Jacques André Kerambrun on 02/11/22.
//

import Foundation
import SwiftUI
extension View {
    func animatableFont(name: String, size: Double) -> some View {
        self.modifier(AnimatableCustomFontModifier(name: name, size: size))
    }
}
