//
//  SkillTableViewController.swift
//  Idle Poring Guide
//
//  Created by Tommy Loh on 28/10/2017.
//  Copyright © 2017 Tommy Loh. All rights reserved.
//

import UIKit
import FirebaseDatabase

class SkillTableViewController: UITableViewController {
    var listOfSkill = [Skill]()
    var Firebaseref = FIRDatabase.database().reference()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let queryRef = Firebaseref.child("Archer_Skill").child("Brutal_Arrow_1").queryOrderedByKey().queryLimited(toLast: 20)
//        queryRef.observe(.childAdded) { (snapshot) in
//            print(snapshot.key)
//        }
        let queryRef = Firebaseref.child("Archer_Skill").child("Brutal_Arrow_1").queryOrdered(byChild: "Honour_Required").queryLimited(toFirst: 20)
        queryRef.observe(.childAdded, with: { (snapshot) in
            print(snapshot)
        }
//        Firebaseref.queryOrderedByKey().observe(.value, with: { (snapshot) in
//            print(snapshot.key)
//            if let skill = Skill(snapshot: snapshot){
//                self.listOfSkill.append(skill)
//                self.tableView.reloadData()
//                print(snapshot.key)
//            }
//        })
    }
    
    func backAction() -> Void {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func backAction(_ sender: Any) {
   let _ = self.navigationController?.popViewController(animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfSkill.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SkillTableViewCell
        
        let skill = listOfSkill[indexPath.row]
        let DMG = skill.Honour
//        cell.DMGLabel.text = DMG
        cell.textLabel?.text = DMG
        return cell
    }
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //
    //    }

    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


