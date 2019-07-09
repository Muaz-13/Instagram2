//
//  DetailsCell.swift
//  Insta
//
//  Created by muaz mohamed on 7/7/19.
//  Copyright © 2019 muaz mohamed. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {

    @IBOutlet weak var FirstImage: UIImageView!
    
    @IBOutlet weak var FirstLabel: UILabel!
    
    
    @IBOutlet weak var SecondLabel: UILabel!
    @IBOutlet weak var SecondImage: UIImageView!
    
    @IBOutlet weak var ThirdLabel: UILabel!
    
    @IBOutlet weak var FourthLabel: UILabel!
    
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        FirstImage.layer.cornerRadius = FirstImage.frame.width/2
        FirstImage.clipsToBounds = true
        FirstImage.layer.borderWidth = 2
        FirstImage.layer.borderColor = UIColor.black.cgColor
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
