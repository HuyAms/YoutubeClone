//
//  Video.swift
//  YoutubeClone
//
//  Created by iosadmin on 14.7.2018.
//  Copyright © 2018 iosadmin. All rights reserved.
//

import UIKit

class Video {
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: NSNumber?
    var uploadDate: Date?
    
    var channel: Channel?
}

class Channel {
    var name: String?
    var profileImageName: String?
}
