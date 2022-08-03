//
//  MyGroupAvatarShadow.swift
//  VK_my
//
//  Created by Кирилл Терновский on 21.06.2022.
//

import UIKit

class MyGroupAvatarShadow: UIView {

    @IBOutlet var shadowView2: UIView!
    @IBOutlet var MyGroupImage2: UIImageView!
    var shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView2.layer.shadowColor = shadowColor.cgColor
        shadowView2.layer.shadowOffset = .zero
        shadowView2.layer.shadowRadius = 7
        shadowView2.layer.shadowOpacity = 0.5
        //shadowView2.layer.backgroundColor = UIColor.systemPink.cgColor
    }
    
    override func layoutSubviews() {
        MyGroupImage2.layer.cornerRadius = bounds.height / 2
        shadowView2.layer.cornerRadius = bounds.height / 2
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
