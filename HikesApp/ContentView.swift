//
//  ContentView.swift
//  HikesApp
//
//  Created by Yohan on 2024-10-11.
//

import SwiftUI

struct ContentView: View {
    
    let hikes:[Hike] = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick and Herry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetails(hike: hike)
            }
        }
    }
}


#Preview {
    ContentView()
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: RoundedCornerStyle.continuous))
                .frame(width: 75)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
