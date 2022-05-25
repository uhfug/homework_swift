//
//  FriendsController.swift
//  VK_my
//
//  Created by Кирилл Терновский on 17.05.2022.
//

import UIKit

class FriendsController: UITableViewController {


    let friends = [
    Friend(image: UIImage(named: "Jolin"), name: "Nastya", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Krill Dmitrouich", friend: newFriend),
    Friend(image: UIImage(named: "samurai"), name: "Alesha", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Anton", friend: newFriend),
    Friend(image: UIImage(named: "Josef"), name: "Alexander", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Elcin", friend: newFriend),
    Friend(image: UIImage(named: "JosefJostar"), name: "Gats", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Aang", friend: newFriend),
    Friend(image: UIImage(named: "japan"), name: "Masha", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Sasha", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Polina", friend: newFriend),
    Friend(image: UIImage(named: "Jolin"), name: "Grigorii", friend: newFriend),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsMyCell",
                                                 for: indexPath) as? FriendsMyCell else {
            preconditionFailure("Error")
        }

        cell.friendsImage.image = friends[indexPath.row].image
        cell.friiendsName.text = friends[indexPath.row].name
        
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
