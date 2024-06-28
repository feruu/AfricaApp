//
//  VideoListItem.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 28/09/23.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK: - PROPERTIES
    let video : Video
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
                
            } //: ZSTACK
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //:VSTACK
        }//:HSTACK
    }
}
//MARK: - PREVIEW

struct VideoListItem_Previews: PreviewProvider
{
    static let videos: [Video] = Bundle.main.decode("animals.json")
    
    static var previews: some View
    {
        
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
