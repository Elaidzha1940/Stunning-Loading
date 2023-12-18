//  /*
//
//  Project: StunningLoading
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.12.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var isLoading: Bool = false
    let timing: Double
    let maxCounter = 3
    let frame: CGSize
    let primaryColor: Color
    
    init(color: Color = .white, size: CGFloat = 120, speed: Double = 0.75) {
        timing = speed * 2
        frame = CGSize(width: size, height: size)
        primaryColor = color
    }
    
    var body: some View {
        
        ZStack {
            Circle()
                .fill(primaryColor)
                .frame(height: frame.height / 3)
                .offset(
                    x: 0,
                    y: isLoading ? -frame.height / 3 : 0)
            
            Circle()
                .fill(primaryColor)
                .frame(height: frame.height / 3)
                .offset(
                    x: isLoading ? -frame.height / 3 : 0,
                    y: isLoading ? frame.height / 3 : 0)
            
            Circle()
                .fill(primaryColor)
                .frame(height: frame.height / 3)
                .offset(
                    x: isLoading ? frame.height / 3 : 0,
                    y: isLoading ? frame.height / 3 : 0)
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: timing).repeatForever(autoreverses: true)) {
                isLoading = true
            }
        }
        .frame(width: frame.width, height: frame.height, alignment: .center)
        .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
