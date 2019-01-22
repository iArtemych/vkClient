//
//  UserGroupsViewController.swift
//  vkClient
//
//  Created by Artem Chursin on 22/01/2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class UserGroupsViewController: UIViewController {
    
    //MARK: - Constants
    
    //MARK: - Variables
    private var groupsArr: [String] = ["Apple",
                                        "Ведроид",
                                        "Девочки",
                                        "Жесткое программирование"]
    
    private var groupsImageArr: [UIImage?] = [UIImage(named: "apple"),
                                               UIImage(named: "Vedro"),
                                               UIImage(named: "Mac"),
                                               UIImage(named: "Comp")]
    
    //MARK: - Outlets
    
    //MARK: - LifeStyle ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //MARK: - Navigation
    
    //MARK: - Private methods
    
}

extension UserGroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserGroupCell", for: indexPath) as! UserGroupCell
        
        cell.groupName.text = groupsArr[indexPath.row]
        cell.groupImage.image = groupsImageArr[indexPath.row]
        
        return cell
    }
    
    
}

extension UserGroupsViewController: UITableViewDelegate {
    
}
