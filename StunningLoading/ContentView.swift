//  /*
//
//  Project: StunningLoading
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.12.2023
//
//  */

import SwiftUI
import Combine

struct ContentView: View {
    @State private var isLoading: Bool = false
    let timing: Double
    let maxCounter = 3
    let frame: CGSize
    let primaryColor: Color
    
    init(color: Color = .white, size: CGFloat = 90, speed: Double = 0.5) {
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
        .animation(Animation.easeInOut(duration: timing), value: .repeatForever(autoreverses: true))
        .frame(width: frame.width, height: frame.height, alignment: .center)
        .rotationEffect(Angle(degrees: isLoading ? 360: 0))
        .animation(Animation.easeInOut(duration: timing), value: .repeatForever(autoreverses: false))
        .onAppear{
            isLoading = true
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
