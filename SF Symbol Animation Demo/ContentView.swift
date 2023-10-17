//
//  ContentView.swift
//  SF Symbol Animation Demo
//
//  Created by Kabir Dhillon on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var appear = false
    @State var disappear = false
    @State var bounce = 1
    @State var pulse = false
    @State var variance = false
    @State var replace = false
    @State var scale = false
    
    var body: some View {
        VStack(spacing: 10) {
            
            /// Appear
            Button {
                appear.toggle()
            } label: {
                Label("Appear", systemImage: "sun.max")
            }
            .symbolEffect(.disappear, isActive: appear)
            .foregroundStyle(.yellow)
            .font(.title)
            
            /// Disappear
            Button {
                disappear.toggle()
            } label: {
                Label("Disappear", systemImage: "moon.fill")
            }
            .symbolEffect(.disappear, isActive: disappear)
            .foregroundStyle(.purple)
            .font(.title)
            
            /// Bounce
            Button {
                bounce += 1
            } label: {
                Label("Bounce", systemImage: "heart.fill")
            }
            .symbolEffect(.bounce, value: bounce)
            .foregroundStyle(.red)
            .font(.title)
            
            // Scale
            Button{
                scale.toggle()
            } label: {
                Label("Scale", systemImage: "dog")
            }
            .symbolEffect(.scale.up, isActive: scale)
            .foregroundStyle(.pink)
            .font(.title)
            
            /// Variable Color
            Button{
                variance.toggle()
            } label: {
                Label("Variance", systemImage: "wifi")
            }
            .symbolEffect(.variableColor.iterative, isActive: variance)
            .foregroundStyle(.blue)
            .font(.title)
            
            /// Pulse
            Button{
                pulse.toggle()
            } label: {
                Label("Pulse", systemImage: "alarm.waves.left.and.right")
            }
            .symbolEffect(.variableColor.iterative, isActive: pulse)
            .foregroundStyle(.orange)
            .font(.title)
            
            /// Replace
            Button {
                withAnimation {
                    replace.toggle()
                }
            } label: {
                Label("Replace", systemImage: replace ? "figure.baseball": "baseball")
            }
            .contentTransition(.symbolEffect(.replace))
            .foregroundStyle(.green)
            .font(.title)
        }
    }
}

#Preview {
    ContentView()
}
