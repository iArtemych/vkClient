//
//  FriendsPhotosViewController.swift
//  vkClient
//
//  Created by Artem Chursin on 22/01/2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class FriendsPhotosViewController: UIViewController {
    
    //MARK: - Constants
    
    //MARK: - Variables
    private var friendsImageArr: [UIImage?] = [UIImage(named: "Nina"),
                                               UIImage(named: "Eva"),
                                               UIImage(named: "Sansa"),
                                               UIImage(named: "Diana"),
                                               UIImage(named: "Natali")]
    
    //MARK: - Outlets
    
    //MARK: - LifeStyle ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //MARK: - Navigation
    
    //MARK: - Private methods

}

extension FriendsPhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friendsImageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pictureItem", for: indexPath) as! FriendsPhotoCell
        
        cell.friendImage.image = friendsImageArr[indexPath.row]
        
        return cell
    }
    
    
}

extension FriendsPhotosViewController: UICollectionViewDelegate {
    
}
