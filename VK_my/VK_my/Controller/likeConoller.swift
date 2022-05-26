//
//  likeConoller.swift
//  VK_my
//
//  Created by Кирилл Терновский on 26.05.2022.
//

import UIKit

class likeConoller: UIControl {

    @IBOutlet var likePicture: UIImageView!
    var isLiked: Bool = false
    
    override func awakeFromNib() {
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .red
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
