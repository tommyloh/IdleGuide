//
//  HeroViewController.swift
//  Idle Poring Guide
//
//  Created by Tommy Loh on 27/10/2017.
//  Copyright © 2017 Tommy Loh. All rights reserved.
//

import UIKit
import Firebase

class HeroViewController: UIViewController {
    
    @IBOutlet weak var HeroCharecter: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var attributeLabel: UILabel!
    
    
    var FirebaseRef = FIRDatabase.database().reference()
    
    //    var listOfHero = [Hero]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let heroCharecterTitle: String = HeroCharecter.titleForSegment(at: HeroCharecter.selectedSegmentIndex)!
         self.imageView.image = UIImage(named:"Novice")
            self.attributeLabel.text = heroCharecterTitle
        
        
    }
    @IBAction func HeroSegment(_ sender: Any) {
        let heroCharecterTitle: String = HeroCharecter.titleForSegment(at: HeroCharecter.selectedSegmentIndex)!
        if HeroCharecter.selectedSegmentIndex == 0 {
            self.attributeLabel.text = heroCharecterTitle
            self.imageView.image = UIImage(named:"archer")
        }
        if HeroCharecter.selectedSegmentIndex == 1 {
            self.attributeLabel.text = heroCharecterTitle
        }
        if HeroCharecter.selectedSegmentIndex == 2 {
            self.attributeLabel.text = heroCharecterTitle
        }
        
    }
    
}



