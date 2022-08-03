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

//let newFriend = [
//    NewFriends(image: UIImage(named: "Jolin"), name: "Nastya"),
//    NewFriends(image: UIImage(named: "JosefJostar"), name: "Krill Dmitrouich"),
//    NewFriends(image: UIImage(named: "samurai"), name: "Alesha"),
//    NewFriends(image: UIImage(named: "japan"), name: "Anton"),
//    NewFriends(image: UIImage(named: "Josef"), name: "Alexander"),
//    NewFriends(image: UIImage(named: "Jolin"), name: "Elcin"),
//    NewFriends(image: UIImage(named: "JosefJostar"), name: "Gats"),
//    NewFriends(image: UIImage(named: "Jolin"), name: "Aang"),
//    NewFriends(image: UIImage(named: "japan"), name: "Masha"),
//    NewFriends(image: UIImage(named: "Jolin"), name: "Sasha"),
//    NewFriends(image: UIImage(named: "Jolin"), name: "Polina"),
//    NewFriends(image: UIImage(named: "Jolin"), name: "Grigorii")
//]
let newFriend = [
NewFriends(image: UIImage(named: "samurai"), name: "Nas Nastya"),
NewFriends(image: UIImage(named: "Jolin"), name: "Dmitrouich Krill"),
NewFriends(image: UIImage(named: "samurai"), name: "Pof Alesha"),
NewFriends(image: UIImage(named: "Jolin"), name: "Bah Anton"),
NewFriends(image: UIImage(named: "Josef"), name: "Zoi Alexander"),
NewFriends(image: UIImage(named: "Jolin"), name: "Hopkiyt Elcin"),
NewFriends(image: UIImage(named: "JosefJostar"), name: "Lopjik Gats"),
NewFriends(image: UIImage(named: "Jolin"), name: "Avatar Aang"),
NewFriends(image: UIImage(named: "japan"), name: "Koir Masha"),
NewFriends(image: UIImage(named: "Jolin"), name: "Froks Sasha"),
NewFriends(image: UIImage(named: "Jolin"), name: "Tolkr Polina"),
NewFriends(image: UIImage(named: "Jolin"), name: "Pori Grigorii"),
]
