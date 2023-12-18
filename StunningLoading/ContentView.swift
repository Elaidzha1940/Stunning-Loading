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
    let Color: Color
    
    init(color: Color = .white, size: CGFloat = 90 speed: Double = 0.5) {
        timing = speed * 2
    }
    
    var body: some View {
        
        VStack {
         
        }
    }
}

#Preview {
    ContentView()
}
