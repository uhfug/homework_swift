//
//  GroupNames.swift
//  VK_my
//
//  Created by Кирилл Терновский on 17.05.2022.
//

import Foundation
import UIKit

class Group {
    
    let image: UIImage?
    let name: String
    
    init(imageGroup: UIImage? = nil, nameGroup: String) {
        self.image = imageGroup
        self.name = nameGroup
    }
}
