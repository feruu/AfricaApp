//
//  VideoListView.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
    @State var videos : [Video] = Bundle.main.decode("videos.json") //json file ichida videola array ichida
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                } //:LOOP
            } //:LIST
            //.listStyle(InsetListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        //Shuffle videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
            
        }//: NAVIGATION
    }
}
//MARK: - PREVIEW
#Preview {
    VideoListView()
}
