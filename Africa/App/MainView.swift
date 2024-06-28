//
//  MainView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem { 
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Items")
                }
            GallaryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallary")
                }
        } //: TAB
    }
}

#Preview {
    MainView()
}
