//
//  friendCollectionViewCell.swift
//  VK_my
//
//  Created by Кирилл Терновский on 25.05.2022.
//

import UIKit

class friendCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageAvatar: UIImageView!
    @IBOutlet var nameFriends: UILabel!
    
    @IBOutlet var likeControl: likeConoller!
    @IBOutlet var conteinerView: UIView!
    
    override func awakeFromNib() {
        likeControl.likePicture.image = UIImage(systemName: "suit.heart")
        let tap = UITapGestureRecognizer(target: self, action: #selector(handlerTap(_:)))
        tap.numberOfTapsRequired = 2
        conteinerView.addGestureRecognizer(tap)
    }
    @objc func handlerTap(_:UITapGestureRecognizer) {
        likeControl.isLiked.toggle()
    
        if likeControl.isLiked {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
        } else {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart")
        }
        
    }
}
