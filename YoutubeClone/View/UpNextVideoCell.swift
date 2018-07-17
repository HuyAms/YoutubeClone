//
//  UpNextVideoView.swift
//  YoutubeClone
//
//  Created by iosadmin on 17.7.2018.
//  Copyright © 2018 iosadmin. All rights reserved.
//

import UIKit

class UpNextVideoCell: BaseCell {
    
    var video: Video? {
        didSet {
            titleLabel.text = video?.title
            
            if let numberOfViews = video?.numberOfViews,
                let videoName = video?.channel?.name,
                let thumbNailImageName = video?.thumbnailImageName {
                
                thumbnailImageView.loadImage(imageUrl: thumbNailImageName)
                                
                let numberFormatter = NumberFormatter()
                numberFormatter.numberStyle = .decimal
                
                subtitleTextView.text = "\(videoName) • \(numberFormatter.string(from: numberOfViews as NSNumber)!) • 2 years ago"
            }
        }
    }
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "taylor_swift_blank_space")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Taylor Swift - Blank Space"
        return label
    }()
    
    let subtitleTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "TaylorSwiftVevo • 1,604,684,607 views • 2 years"
        textView.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        textView.textColor = UIColor.lightGray
        return textView
    }()
    
    let sepatatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(thumbnailImageView)
        addSubview(titleLabel)
        addSubview(subtitleTextView)
        addSubview(sepatatorView)
        
        //thumbnailImageView
        thumbnailImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        thumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        thumbnailImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        thumbnailImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //titleLabel
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: thumbnailImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //subtitleTextView
        subtitleTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        subtitleTextView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        subtitleTextView.leftAnchor.constraint(equalTo: thumbnailImageView.rightAnchor, constant: 8).isActive = true
        subtitleTextView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //sepatatorView
        sepatatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        sepatatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        sepatatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        sepatatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    
}



