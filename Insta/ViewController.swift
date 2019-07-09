//
//  ViewController.swift
//  Insta
//
//  Created by muaz mohamed on 7/7/19.
//  Copyright © 2019 muaz mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    let likes = [ "553 likes", "110 likes", "5000 likes", "4165 likes", "656 likes", "348 likes", "283 likes" , "392 likes" , "12310 likes"]
    
    let caption = [ "#Horse", "#G.O.A.T", "#Super Madera", "#Master of curl", "#Magic", "#History of english football", "#Master" , "#Diver" , "#Best wall"]
    
    let comments = [ "view all 112 comments" ,  "view all 33563 comments", "view all 5230 comments" ,  "view all 890 comments" ,  "view all 77 comments" ,  "view all 787 comments" ,  "view all 9870 comments" , "view all 2410 comments",  "view all 3986 comments",  "view all 231 comments"]
    
    let pics = [UIImage(named: "Mbappe") , UIImage(named: "Messi") , UIImage(named: "Ronaldo") , UIImage(named: "Beckham") , UIImage(named: "Griezmann") , UIImage(named: "Rooney") , UIImage(named: "Mahrez"), UIImage(named: "Neymar"), UIImage(named: "Buffon")]
    
    let location = ["France", "Spain", "Italy", "England" , "Spain" , "England" , "Algeria" ,"Brazil" , "Italy"]
    

    @IBOutlet weak var MyTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MyTableView.delegate = self
        MyTableView.dataSource = self
        
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            
            let cell = MyTableView.dequeueReusableCell(withIdentifier: "StoriesCell") as! StoriesCell
            
        
            return cell
           
        }
        
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "DetailsCell") as! DetailsCell
        
        cell.SecondImage.image = pics[indexPath.row]
        cell.FirstLabel.text = location[indexPath.row]
        cell.SecondLabel.text = likes[indexPath.row]
        cell.ThirdLabel.text = comments[indexPath.row]
        cell.FourthLabel.text = caption[indexPath.row]
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pics.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        
        self.navigationController?.pushViewController(view, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0){
            return 85
        }
      return UITableView.automaticDimension
}
    
}
