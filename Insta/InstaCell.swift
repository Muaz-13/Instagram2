//
//  InstaCell.swift
//  Insta
//
//  Created by muaz mohamed on 7/8/19.
//  Copyright © 2019 muaz mohamed. All rights reserved.
//

import UIKit

class InstaCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageStory: UIImageView!
    
    @IBOutlet weak var LabelStory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        ImageStory.layer.cornerRadius = ImageStory.frame.width/2
        ImageStory.clipsToBounds = true
        ImageStory.layer.borderWidth = 2
        ImageStory.layer.borderColor = UIColor.orange.cgColor
    
        
}
}
