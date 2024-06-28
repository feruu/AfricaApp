//
//  GalaryView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//

import SwiftUI
import Combine

struct GallaryView: View {
    //MARK: - PROPERTIES
    @State private var selectionAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    ///MARK: SIMPLE GRID DEFINITION
//    let gridLayout: [GridItem] = [GridItem(.flexible()),
//                                  GridItem(.flexible()),
//                                  GridItem(.flexible())]
//
    //бир нечта лайнга езиш учун : control+Shift+ key (down arrow)
    /// MARK: EFFICIENT GRID DEFINATION
   // let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    //DYNAMIC GRID LAYOUT
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 30) {
                //: MARK: - IMAGE
                Image(selectionAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    
                    
                // MARK: - SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn, perform: { value
                    in gridSwitch()
                    })
                /*.onReceive(Just(gridColumn)) { _ in
                 gridSwitch()
             }
                 
                 
             }*/
                //MARK: GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectionAnimal = item.image
                                    haptic.impactOccurred()
                            }
                            
                        //Text(animals)
                    } // : LOOP
                }//: GRID
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //:SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
//MARK: - PREVIEW
#Preview {
    GallaryView()
}
