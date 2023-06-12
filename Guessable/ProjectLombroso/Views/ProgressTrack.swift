//
//  ProgressTrack.swift
//  ProjectLombroso
//
//  Created by Jacques André Kerambrun on 02/11/22.
//

import SwiftUI

struct ProgressTrack: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 250, height: 250)
            .overlay(
                Circle().stroke(Color.black, lineWidth: 15)
        )
    }
}
