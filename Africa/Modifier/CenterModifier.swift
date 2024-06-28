//
//  CenterModifier.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 04/10/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        } //: HSTACK
    }
}
