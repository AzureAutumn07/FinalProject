//
//  AnimalView.swift
//  Africa
//
//  Created by acstudent on 12/13/23.
//

import SwiftUI

struct AnimalView: View {
    //MARK: PROPERTIES
    let animal: Animal
    
    //MARK: BODY
    var body: some View {
        ScrollView{
            VStack {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .underline(color: .accentColor)
                    .padding()
                Text(animal.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                HStack {
                    Image(systemName:"photo.on.rectangle.angled")
                    Text("Wilderness in Pictures")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding()
                TabView {
                    Image("\(animal.name)-1")
                    Image("\(animal.name)-2")
                }
                .padding()
                HStack {
                    Image(systemName:"questionmark.circle")
                    Text("Did You Know?")
                        .font(.title)
                        .fontWeight(.bold)
                }
                TabView {
                    Text("\(animal.name)-1")
                    Text("\(animal.name)-2")
                }
                HStack {
                    Image(systemName:"info.circle")
                    Text("All about \(animal.name)s")
                        .font(.title)
                        .fontWeight(.bold)
                }
                Text(animal.description)
                    .padding()
                
            }
            .padding()
        }
    }
}

let animalPreview: [Animal] = Bundle.main.decode("animals2.json")

#Preview {
    AnimalView(animal: animalPreview[1])
}
