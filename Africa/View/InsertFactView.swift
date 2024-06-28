//
//  InsertFactView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 28/09/23.
//

import SwiftUI

struct InsertFactView: View {
    //MARK: - PROPERTIES
    let animal : Animal
    //MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //:TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GROUPBOX
    }
}
//MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View{
        InsertFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
