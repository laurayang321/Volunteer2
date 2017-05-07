//
//  PostStoryController.swift
//  4900
//
//  Created by Laura Yang on 2017-05-06.
//  Copyright © 2017 leo  luo. All rights reserved.
//

import UIKit
import Foundation

class PostStoryController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    var images = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    private let leftAndRightPaddings: CGFloat = 8.0
    private let numberOfItemsPerRRow: CGFloat = 3.0
    private let heightAjustment: CGFloat = 30.0
    
    //MARK: - View Controller life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //let width = ((collectionView!.frame.width) - leftAndRightPaddings) / numberOfItemsPerRRow
        //let layout = collectionViewLayout as! UICollectionViewLayout
        //layout.itemSize = CGSizeMake(width, width + heightAjustment)
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return images.count
    }

    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath) as! StoryCell
        // daiyong: 
//        let cell1: StoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath) as! StoryCell
//        let asset: PHAsset = self.
        
        //cell.layer.cornerRadius = 50
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.2
        
        cell.storyImage.image = UIImage(named: images[indexPath.row])
        cell.storyImage.contentMode = .scaleAspectFill
        
        return cell
    }


    
//    private struct Storyboard{
//        static let CellIdentifier = "StoryCell"
//    }
}
