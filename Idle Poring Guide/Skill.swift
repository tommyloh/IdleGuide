//
//  Skill.swift
//  Idle Poring Guide
//
//  Created by Tommy Loh on 29/10/2017.
//  Copyright © 2017 Tommy Loh. All rights reserved.
//

import Foundation
import Firebase

class Skill{
    var Honour: String?
    var DMG : String?
    var Description :String?
    
    init?(snapshot: FIRDataSnapshot){
        
        guard let dict = snapshot.value as? [String:AnyObject] else {return nil}
       
        if let Honour = dict["Honour_Required"] as? String {
            self.Honour = Honour
        }
        
        if let DMG = dict["DMG"] as? String{
            self.DMG = DMG
        }
        if let Description = dict ["Description"] as? String {
            self.Description = Description
        }
    }
}
