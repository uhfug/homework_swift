//
//  avatarFriendShadowUIView.swift
//  VK_my
//
//  Created by Кирилл Терновский on 26.05.2022.
//

import UIKit

class avatarFriendShadowUIView: UIView {

    @IBOutlet var avatarView: UIImageView!
    @IBOutlet var shadowView: UIView!
    
    var shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 7
        shadowView.layer.shadowOpacity = 0.5
        
    }
    
    override func layoutSubviews() {
        avatarView.layer.cornerRadius = bounds.height / 2
        shadowView.layer.cornerRadius = bounds.height / 2
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
