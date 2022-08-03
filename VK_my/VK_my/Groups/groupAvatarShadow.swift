//
//  groupAvatarShadow.swift
//  VK_my
//
//  Created by Кирилл Терновский on 21.06.2022.
//

import UIKit

class groupAvatarShadow: UIView {
    
    @IBOutlet var ShadowView: UIView!
    @IBOutlet var NonMyGroupImage2: UIImageView!
    var shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ShadowView.layer.shadowColor = shadowColor.cgColor
        ShadowView.layer.shadowOffset = .zero
        ShadowView.layer.shadowRadius = 7
        ShadowView.layer.shadowOpacity = 0.5
        
    }
    
    override func layoutSubviews() {
        NonMyGroupImage2.layer.cornerRadius = bounds.height / 2
        ShadowView.layer.cornerRadius = bounds.height / 2
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
