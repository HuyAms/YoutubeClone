//
//  Video.swift
//  YoutubeClone
//
//  Created by iosadmin on 14.7.2018.
//  Copyright © 2018 iosadmin. All rights reserved.
//

import Foundation

struct Video: Codable {
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: Int?
    var channel: Channel?
    var duration: Int?
    
    enum CodingKeys: String, CodingKey {
        case thumbnailImageName = "thumbnail_image_name"
        case title = "title"
        case numberOfViews = "number_of_views"
        case channel = "channel"
        case duration = "duration"
    }
    
    
}

struct Channel: Codable {
    var name: String?
    var profileImageName: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case profileImageName = "profile_image_name"
    }
}
