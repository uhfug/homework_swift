//
//  FotoFriendsController.swift
//  VK_my
//
//  Created by Кирилл Терновский on 20.05.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class FotoFriendsController: UICollectionViewController {
//    let friends = [
//        Friends(friendsImage: UIImage.init(systemName: "australsign.circle") , friendsName: "Nastya"),
//        Friends(friendsImage: UIImage.init(systemName: "arrowtriangle.right.circle.fill") , friendsName: "Itachi"),
//        Friends(friendsImage: UIImage.init(systemName: "arrow.triangle.merge") , friendsName: "Boris Elcin"),
//        Friends(friendsImage: UIImage.init(systemName: "arrow.up.and.down.and.arrow.left.and.right"), friendsName: "Vlados"),
//        Friends(friendsImage: UIImage.init(systemName: "arrow.up.circle"), friendsName: "Kril Dmitrouich"),
//        Friends(friendsImage: UIImage.init(systemName: "lightbulb.fill"), friendsName: "Anton"),
//        Friends(friendsImage: UIImage.init(systemName: "burn"), friendsName: "Aleksander"),
//        Friends(friendsImage: UIImage.init(systemName: "circle.and.line.horizontal.fill"), friendsName: "Polina"),
//            ]
//
    var arrayFriends: [NewFriends] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayFriends.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fotoCell", for: indexPath) as? FotoFriendsCell else {
            preconditionFailure("Error")
        }
        
        cell.fotoFriends.image = arrayFriends[indexPath.row].image
    
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
