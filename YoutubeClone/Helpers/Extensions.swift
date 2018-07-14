//
//  Extensions.swift
//  YoutubeClone
//
//  Created by iosadmin on 14.7.2018.
//  Copyright © 2018 iosadmin. All rights reserved.
//

import UIKit
import Kingfisher

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

extension UIImageView {
    func loadImage(imageUrl: String) {
        let placeHolder = UIImage(named: "placeholder")
        let url = URL(string: imageUrl)
        self.kf.indicatorType = .activity
        self.kf.setImage(with: url, placeholder: placeHolder)
    }
}
