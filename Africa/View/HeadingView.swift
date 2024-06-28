//
//  HeadingView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//

import SwiftUI

struct HeadingView: View {
//MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    
//MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//:HSTACK
        .padding(.vertical)
        
    }
}
//MARK: - PREVIEW
#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
        .previewLayout(.sizeThatFits)
        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
}
