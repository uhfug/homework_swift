//
//  StructsFriend.swift
//  VK_my
//
//  Created by Кирилл Терновский on 24.05.2022.
//

import Foundation
import UIKit


struct Friend {
    let image: UIImage?
    let name: String
    
    let friend: [NewFriends]
}

struct NewFriends {
    let image: UIImage?
    let name: String
}

let newFriend = [
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
    NewFriends(image: UIImage(named: "ded"), name: "Alesha"),
]
