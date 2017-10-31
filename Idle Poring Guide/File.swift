//
//  File.swift
//  Idle Poring Guide
//
//  Created by Tommy Loh on 26/10/2017.
//  Copyright © 2017 Tommy Loh. All rights reserved.
//

import Foundation
import UIKit
import Firebase
class User: NSObject {
    
    var ProfileImageUrl : String?
    
    class func signIn(_ uid: String){
        UserDefaults.standard.setValue(uid, forKeyPath: "uid")
    }
    
    class func isSignedIn() -> Bool {
        if let _ = UserDefaults.standard.value(forKey: "uid") as? String {
            return true
        }else{
            return false
        }
    }
    
    class func currentUserUid() -> String?{
        return UserDefaults.standard.value(forKey: "uid") as? String
    }
    
    class Skill {
        var Archer : String?
        var Magician : String?
        var Swordsman : String?
        
        
        init?(snapshot: FIRDataSnapshot){
            guard let dict = snapshot.value as? [String:AnyObject] else {return nil}
            
            if let Archer = dict["Archer"] as? String{
                self.Archer = Archer
                
            }
            if let Magician = dict["Magician"] as? String{
                self.Magician = Magician
                
            }
            if let Swordsman = dict["Swordsman"] as? String{
                self.Swordsman = Swordsman
                
            }
            
        }
    
    }
}
