//
//  FriendsNames.swift
//  VK_my
//
//  Created by Кирилл Терновский on 18.05.2022.
//

import Foundation
import UIKit

class Friends {
    
    let image: UIImage?
    let name: String
    
    init(friendsImage: UIImage? = nil, friendsName: String) {
        self.image = friendsImage
        self.name = friendsName
    }
}
