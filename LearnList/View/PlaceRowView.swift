//
//  PlaceRowView.swift
//  LearnList
//
//  Created by Gocement on 25/05/23.
//

import SwiftUI

struct PlaceRowView: View {
    let place: Place
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("\(place.image)")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            VStack (alignment: .leading) {
                Text("\(place.name.capitalized)")
                    .bold()
                    .font(.system(size: 18))
                    .lineLimit(1)
                
                Text("\(place.address.capitalized)")
                    .font(.system(size: 14))
                    .lineLimit(2)
            }.frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}
