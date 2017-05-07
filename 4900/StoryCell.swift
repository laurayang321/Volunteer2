//
//  StoryCell.swift
//  4900
//
//  Created by Laura Yang on 2017-05-07.
//  Copyright © 2017 leo  luo. All rights reserved.
//

import UIKit

class StoryCell: UICollectionViewCell {
    
    @IBOutlet weak var storyImage: UIImageView!
    
    func setImage(thumbnailImage: UIImage){
        self.storyImage.image = thumbnailImage
    }
    
}
