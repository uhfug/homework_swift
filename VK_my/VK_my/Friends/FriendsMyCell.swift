//
//  FriendsMyCell.swift
//  VK_my
//
//  Created by Кирилл Терновский on 18.05.2022.
//

import UIKit

class FriendsMyCell: UITableViewCell {
    @IBOutlet weak var friendsImage: UIImageView!
    @IBOutlet weak var friiendsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendsImage.layer.cornerRadius = friendsImage.bounds.width / 2
    }
}
