//
//  SwiftUIExperiment.swift
//  Dave's Dive
//
//  Created by David Burgstrom on 2/14/26.
//

import SwiftUI

struct SwiftUIExperiment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello SwiftUI!")
                .font(.largeTitle)
            
            Button("Tap Me") {
                print("Button tapped!")
            }
            .buttonStyle(.borderedProminent)
            Text("Mozzarella Sticks")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    SwiftUIExperiment()
}
