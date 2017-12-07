//
//  CreativityViewController.swift
//  AlgorithProject
//
//  Created by Wilsher, Ethan on 11/8/17.
//  Copyright © 2017 Wilsher, Ethan. All rights reserved.
//

import UIKit

public class CreativityViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return[
            UIImage(named:"MyArt"),
            UIImage(named:"MyArt"),
            UIImage(named:"MyArt"),
            UIImage(named:"MyArt"),
            UIImage(named:"MyArt"),
            UIImage(named:"Haiku"),
            UIImage(named:"Haiku"),
            UIImage(named:"Haiku"),
            UIImage(named:"Haiku"),
            UIImage(named:"Haiku"),
            ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at:indexPaths)
            })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
                
            }
            
        }
    }

}
