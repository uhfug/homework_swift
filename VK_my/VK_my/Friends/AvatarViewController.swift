//
//  AvatarViewController.swift
//  VK_my
//
//  Created by Кирилл Терновский on 23.05.2022.
//

import UIKit

private let reuseIdentifier = "Cell"
class AvatarViewController: UIViewController {

    let friends = [
        Friends(friendsImage: UIImage.init(systemName: "australsign.circle") , friendsName: "Nastya"),
        Friends(friendsImage: UIImage.init(systemName: "arrowtriangle.right.circle.fill") , friendsName: "Itachi"),
        Friends(friendsImage: UIImage.init(systemName: "arrow.triangle.merge") , friendsName: "Boris Elcin"),
        Friends(friendsImage: UIImage.init(systemName: "arrow.up.and.down.and.arrow.left.and.right"), friendsName: "Vlados"),
        Friends(friendsImage: UIImage.init(systemName: "arrow.up.circle"), friendsName: "Kril Dmitrouich"),
        Friends(friendsImage: UIImage.init(systemName: "lightbulb.fill"), friendsName: "Anton"),
        Friends(friendsImage: UIImage.init(systemName: "burn"), friendsName: "Aleksander"),
        Friends(friendsImage: UIImage.init(systemName: "circle.and.line.horizontal.fill"), friendsName: "Polina"),
            ]
    
    @IBOutlet weak var avatarCollection: avatra!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fotoCell", for: indexPath) as? FotoFriendsCell else {
            preconditionFailure("Error")
        }
        
        cell.fotoFriends.image = friends[indexPath.row].image
    
    
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
