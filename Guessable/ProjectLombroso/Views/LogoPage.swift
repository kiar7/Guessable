//
//  LogoPage.swift
//  ProjectLombroso
//
//  Created by Leandro on 5/11/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            MainMenuView()
        } else {
            VStack {
                VStack {
                    Image("Carta")
                        .resizable()
                        .frame(width: 200.0, height: 150.0)
                        .foregroundColor(.blue)
                    Text("Guessable")
                        .font(.system(size: 60, weight:.semibold,design:.monospaced))
                        .fontWeight(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 100)
                        .foregroundStyle(
                            .linearGradient(
                                colors: [.teal, .blue],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


    
