//
//  BindingHome.swift
//  HikesApp
//
//  Created by Yohan on 2024-10-14.
//

import SwiftUI

struct BindingHome: View {
    
    @State private var isLightOn: Bool = false
    
    var body: some View {
        VStack {
            LightBlubView(isOn: $isLightOn)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isLightOn ? .black : .white)
    }
}

struct LightBlubView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)
            
            Button("Toggle") {
                isOn.toggle()
            }
        }
    }
}

#Preview {
    BindingHome()
}
