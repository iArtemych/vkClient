//
//  FriendsViewController.swift
//  vkClient
//
//  Created by Artem Chursin on 22/01/2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {

    //MARK: - Constants
    
    //MARK: - Variables
    private var friendsArr: [String] = ["Диана из Венгерберга",
                                        "Юля из Ривии",
                                        "Женя Мельникова",
                                        "Лера Бывшая",
                                        "Санса Старк"]
    
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

extension FriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FriendsCell
        
        cell.friendsName.text = friendsArr[indexPath.row]
        cell.friendsImage.image = friendsImageArr[indexPath.row]
        
        return cell
    }
    
    
}

extension FriendsViewController: UITableViewDelegate {
    
}
