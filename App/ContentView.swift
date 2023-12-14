//
//  ContentView.swift
//  Africa
//
//  Created by Mark Nair on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    //MAIN: PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                        .onTapGesture {
                            AnimalView(animal: animal)
                        }
                }
                VStack{
                    Image("launch-screen-image")
                        .resizable()
                        .scaledToFit()
                    Text("Copyright © Samantha Castillo")
                    Text("Used a sample to connect everything")
                }
                .foregroundColor(.gray)
            }
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
