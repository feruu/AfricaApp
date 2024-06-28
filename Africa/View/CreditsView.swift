//
//  CreditsView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 04/10/23.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Feruza Yuldasheva
    All rights reserved
    Begining of  my ♡ journey
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: VSTACK
        .opacity(0.4)
    }
}

//MARK: - PREVIEW
#Preview {
    CreditsView()
        .previewLayout(.sizeThatFits)
        .padding()
}
