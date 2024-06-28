//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 04/10/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: -PROPERTIES
    let animal : Animal
    
    
    var body: some View {
    //MARK: -BODY
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct AnimalGridItemView_Previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
       
            AnimalGridItemView(animal: animals[0])
                .previewLayout(.sizeThatFits)
                .padding()
        
    }
}
