//
//  DetailPlaceView.swift
//  LearnList
//
//  Created by Gocement on 25/05/23.
//

import SwiftUI

struct DetailPlaceView: View {
    let place: Place
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 16){
                    Image("\(place.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("\(place.name.capitalized)")
                        .bold()
                        .font(.system(size: 22))
                    
                    Text("\(place.description)")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
            }
        }.navigationBarTitle("\(place.name.capitalized)", displayMode: .inline)
    }
}

struct DetailPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlaceView(place: Place(id: 1, name: "Mojokerto", address: "Jalan Raya Bypass", description: "Lorem ipsum dolor amet", image: "paris"))
    }
}
