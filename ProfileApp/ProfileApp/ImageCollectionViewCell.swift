//
//  ImageCollectionViewCell.swift
//  ProfileApp
//
//  Created by spark-01 on 2024/05/20.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
        
        @IBOutlet weak var imageView: UIImageView!
        
        func setImage(_ image: UIImage) {
            imageView.image = image
        }
        
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initializationコードを書く(ある場合)
        }
    
}
