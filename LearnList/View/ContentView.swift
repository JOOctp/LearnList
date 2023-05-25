//
//  ContentView.swift
//  LearnList
//
//  Created by Gocement on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    let placeList = [
        Place(id: 1, name: "Mojokerto", address: "Jalan Raya Bypass", description: "Lorem ipsum dolor amet", image: "paris"),
        Place(id: 2, name: "Jombang", address: "Jalan HR Muhammad", description: "Lorem ipsum dolor amet", image: "mesir"),
        Place(id: 3, name: "Malang", address: "Jalan Sawojajr G6F", description: "Lorem ipsum dolor amet", image: "paris"),
        Place(id: 4, name: "Kepanjen", address: "Jalan Raya Mojogeneng", description: "Lorem ipsum dolor amet", image: "mesir"),
        Place(id: 5, name: "Sempol", address: "Jalan Soekarno Hatta", description: "Lorem ipsum dolor amet", image: "paris"),
        Place(id: 6, name: "Batu", address: "Jalan Raden Werkudoro", description: "Lorem ipsum dolor amet", image: "mesir"),
        Place(id: 7, name: "Surabaya", address: "Pradah Kendal WIyung", description: "Lorem ipsum dolor amet", image: "paris"),
        Place(id: 8, name: "Gresik", address: "Jalan Semen Gresik", description: "Lorem ipsum dolor amet", image: "mesir")
    ]
    
    var body: some View {
        NavigationView{
            List(placeList, id: \.id) { place in
                NavigationLink{
                    DetailPlaceView(place: place)
                } label: {
                    PlaceRowView(place: place)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Tempat Wisata")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
