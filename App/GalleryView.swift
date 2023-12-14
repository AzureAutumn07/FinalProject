//
//  GalleryView.swift
//  Africa
//
//  Created by Mark Nair on 12/4/23.
//

import SwiftUI

struct GalleryView: View {
    var animalPhoto: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        Text("Gallery")
            .font(.largeTitle)
//        ForEach(animalPhoto.gallery, id: \.self) {item in
//            Image(item)
//                .resizable()
//                .scaledToFit()
//                
//        }
    }
}

#Preview {
    GalleryView()
}
