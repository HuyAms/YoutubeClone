//
//  VideoLauncher.swift
//  YoutubeClone
//
//  Created by iosadmin on 16.7.2018.
//  Copyright © 2018 iosadmin. All rights reserved.
//

import UIKit
import AVFoundation

class VideoPlayerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black
        
        let urlString = "https://firebasestorage.googleapis.com/v0/b/realtimechat-49044.appspot.com/o/message_movies%2F6D53D941-D22E-4B1A-BBB4-7529BE6D9D99.mov?alt=media&token=24fa561b-7ed8-471d-91b5-13db1a6fb54c"
        if let url = URL(string: urlString) {
            let player = AVPlayer(url: url)
            let playerLayer = AVPlayerLayer(player: player)
            self.layer.addSublayer(playerLayer)
            playerLayer.frame = self.frame
            
            player.play()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class VideoLaucher: NSObject {
    
    func showVideoPlayer() {
        print("showing video player animation ...")
        if let keyWindow = UIApplication.shared.keyWindow {
            let view = UIView(frame: keyWindow.frame)
            view.backgroundColor = UIColor.white
            view.frame = CGRect(x: keyWindow.frame.width - 10, y: keyWindow.frame.height - 10, width: 10, height: 10)
            keyWindow.addSubview(view)
            
            let height = keyWindow.frame.width * 9 / 16
            let videoPlayerFrame = CGRect(x: 0, y: 0, width: keyWindow.frame.width, height: height)
            let videoPlayerView = VideoPlayerView(frame: videoPlayerFrame)
            view.addSubview(videoPlayerView)
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                view.frame = keyWindow.frame
            }, completion: { (complete) in
                UIApplication.shared.setStatusBarHidden(true, with: .fade)
            })
        }
    }
    
}
