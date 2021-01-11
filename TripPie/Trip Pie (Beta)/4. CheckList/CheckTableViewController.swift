//
//  CheckTableViewController.swift
//  Trip Pie (Beta)
//
//  Created by Eliana Han on 11/6/20.
//

import UIKit

class CheckTableViewController: UITableViewController {

    struct ToPack {
        let list: String
        var isChecked: Bool = false
    }
    
    var lists: [ToPack] = [ToPack(list: "Passport & Copy of Passport"), ToPack(list: "Tickets"), ToPack(list: "Exchanged Currency"), ToPack(list: "2nd Source of Identification"), ToPack(list: "Sim card"), ToPack(list: "Cellphone"), ToPack(list: "Wallet"), ToPack(list: "Sunscreen"), ToPack(list: "Shampoo"), ToPack(list: "Toothbrush"), ToPack(list: "Make Ups"),  ToPack(list: "Medicines"), ToPack(list: "Camera"), ToPack(list: "USB Cables"), ToPack(list: "Chargers"), ToPack(list: "Memory Card"), ToPack(list: "Multitaps"), ToPack(list: "Earphone"), ToPack(list: "Portable Charger"), ToPack(list: "Lock"), ToPack(list: "Sunglasses"), ToPack(list: "Hat / Cap"), ToPack(list: "Raincoar"), ToPack(list: "Undies"), ToPack(list: "Socks"), ToPack(list: "Clothes"), ToPack(list: "Mini bag"), ToPack(list: "A Pen"), ToPack(list: "Else")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lists.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToPack", for: indexPath)

        cell.textLabel?.text = lists[indexPath.row].list
        cell.imageView?.image = lists[indexPath.row].isChecked ? UIImage(systemName: "checkmark.circle.fill") : UIImage(systemName: "checkmark.circle")
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        lists[indexPath.row].isChecked.toggle()
        tableView.reloadRows(at: [indexPath], with: .automatic)
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
