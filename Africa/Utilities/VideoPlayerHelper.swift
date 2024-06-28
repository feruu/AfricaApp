//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 28/09/23.
//

import Foundation
import AVKit

var videoPlayer : AVPlayer?

func playerVideo(fileName: String, fileFormat: String) -> AVPlayer
{
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
/*VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))*/
