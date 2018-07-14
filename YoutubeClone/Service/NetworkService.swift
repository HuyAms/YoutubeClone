//
//  NetworkService.swift
//  YoutubeClone
//
//  Created by iosadmin on 14.7.2018.
//  Copyright © 2018 iosadmin. All rights reserved.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService()
    
    func loadVideos(completion: @escaping ([Video]) -> Void) {
        DispatchQueue.global(qos: .background).async {
            let path = Bundle.main.path(forResource: "home", ofType: "json")!
            do {
                let videoData = try Data(contentsOf: URL(fileURLWithPath: path))
                let videos = try JSONDecoder().decode([Video].self, from: videoData)
                
                DispatchQueue.main.async {
                    completion(videos)
                }
            } catch {
                print("Failed to load videos")
            }
        }
    }
    
    
}
