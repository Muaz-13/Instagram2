//
//  StoriesCell.swift
//  Insta
//
//  Created by muaz mohamed on 7/8/19.
//  Copyright © 2019 muaz mohamed. All rights reserved.
//

import UIKit

class StoriesCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let data = ["Your Story", "Messi" , "Ronaldo" , "Mbappe" , "Neymar" , "Mahrez" , "Buffon" , "Beckham" , "Rooney" , "Griezmann"]
    
    let photos = [UIImage(named: "Muaz") , UIImage(named: "Messi") , UIImage(named: "Ronaldo") , UIImage(named: "Mbappe") , UIImage(named: "Neymar") , UIImage(named: "Mahrez") , UIImage(named: "Buffon"), UIImage(named: "Beckham"), UIImage(named: "Rooney"), UIImage(named: "Griezmann")]
    
    @IBOutlet weak var MyCollectioView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        MyCollectioView.delegate = self
        MyCollectioView.dataSource = self
        
    
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        // Configure the view for the selected state
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = MyCollectioView.dequeueReusableCell(withReuseIdentifier: "InstaCell", for: indexPath) as! InstaCell
        
        cell.ImageStory.image = photos[indexPath.row]
        cell.LabelStory.text = data[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 80, height: 80)
        
    }
}
