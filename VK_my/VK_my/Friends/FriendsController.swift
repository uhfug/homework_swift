//
//  FriendsController.swift
//  VK_my
//
//  Created by Кирилл Терновский on 17.05.2022.
//

import UIKit

class FriendsController: UITableViewController {

    var arrayFriend: [NewFriends]?
    let friends = [
    Friend(image: UIImage(named: "Jolin"), name: "Nas Nastya", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Dmitrouich Krill", friend: newFriend),
    Friend(image: UIImage(named: "samurai"), name: "Pof Alesha", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Bah Anton", friend: newFriend),
    Friend(image: UIImage(named: "Josef"), name: "Zoi Alexander", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Hopkiyt Elcin", friend: newFriend),
    Friend(image: UIImage(named: "JosefJostar"), name: "Lopjik Gats", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Avatar Aang", friend: newFriend),
    Friend(image: UIImage(named: "japan"), name: "Koir Masha", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Froks Sasha", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Tolkr Polina", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Pori Grigorii", friend: newFriend),
    ]
    
    var sortedFriends = [Character : [Friend]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.sortedFriends = sort(friends: friends)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    private func sort(friends: [Friend]) -> [Character : [Friend]] {
        var friendsDict = [Character : [Friend]]()
        
        friends.forEach { friend in
            guard let firstChar = friend.name.first else {return}
            
            if var thisCharFriend = friendsDict[firstChar] {
                thisCharFriend.append(friend)
                
                friendsDict[firstChar] = thisCharFriend
            } else {
                friendsDict[firstChar] = [friend]
            }
        }
        return friendsDict
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sortedFriends.keys.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        String(sortedFriends.keys.sorted()[section])
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let keySorted = sortedFriends.keys.sorted()
        
        let friends = sortedFriends[keySorted[section]]?.count ?? 0
        
        return friends
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsMyCell",
                                                 for: indexPath) as? FriendsMyCell else {
            preconditionFailure("Error")
        }

        let firstChar = sortedFriends.keys.sorted()[indexPath.section]
        
        let friends = sortedFriends[firstChar]!
        
        let friend: Friend = friends[indexPath.row]
        
        cell.friendsImage.image = friend.image
        cell.friiendsName.text = friend.name
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "friendCollection",
           let destinationVC = segue.destination as? ImageFriendCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            
            let friendName = friends[indexPath.row].name
            destinationVC.title = friendName
            destinationVC.arrayFriend = friends[indexPath.row].friend
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
