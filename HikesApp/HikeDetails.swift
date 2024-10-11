//
//  HikeDetails.swift
//  HikesApp
//
//  Created by Yohan on 2024-10-11.
//

import SwiftUI

struct HikeDetails: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack(spacing: 10.0) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? ContentMode.fill : ContentMode.fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            
            Text(hike.name)
                .font(.title)
            
            Text("\(hike.miles.formatted()) miles")
            
            Spacer()
                
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        HikeDetails(hike: Hike(name: "Salmonberry Trail", photo: "sal", miles: 6))
    }
}
