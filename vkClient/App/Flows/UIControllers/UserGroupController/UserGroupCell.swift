//
//  UserGroupCell.swift
//  vkClient
//
//  Created by Artem Chursin on 22/01/2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class UserGroupCell: UITableViewCell {

    
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
