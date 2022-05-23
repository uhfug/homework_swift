//
//  NonMyGroupController.swift
//  VK_my
//
//  Created by Кирилл Терновский on 17.05.2022.
//

import UIKit

class NonMyGroupController: UITableViewController {

    let groups = [
        Group(imageGroup: UIImage.init(systemName: "pencil.slash"), nameGroup: "Moms"),
        Group(imageGroup: UIImage.init(systemName: "pencil"), nameGroup: "Dads"),
        Group(imageGroup: UIImage.init(systemName: "externaldrive.badge.minus"), nameGroup: "rap"),
        Group(imageGroup: UIImage.init(systemName: "xmark.bin.circle.fill"), nameGroup: "rock"),
        Group(imageGroup: UIImage.init(systemName: "arrow.down.doc.fill"), nameGroup: "students"),
        Group(imageGroup: UIImage.init(systemName: "calendar.day.timeline.left"), nameGroup: "4ch"),
        Group(imageGroup: UIImage.init(systemName: "arrowshape.turn.up.backward.circle.fill"), nameGroup: "2ch"),
        Group(imageGroup: UIImage.init(systemName: "books.vertical.circle"), nameGroup: "no name"),
        Group(imageGroup: UIImage.init(systemName: "umbrella.fill"), nameGroup: "no war"),
        Group(imageGroup: UIImage.init(systemName: "suit.heart"), nameGroup: "make love"),
        Group(imageGroup: UIImage.init(systemName: "heart.circle.fill"), nameGroup: "anime"),
        Group(imageGroup: UIImage.init(systemName: "command.circle"), nameGroup: "gamers"),
        Group(imageGroup: UIImage.init(systemName: "globe.asia.australia.fill"), nameGroup: "lovers")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NonMyGroupCell", for: indexPath)

        var contetn = cell.defaultContentConfiguration()
        contetn.text = groups[indexPath.row].name
        contetn.image = groups[indexPath.row].image
        
        cell.contentConfiguration = contetn
        return cell
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
