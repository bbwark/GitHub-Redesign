//
//  Repository.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import Foundation

struct Repository : Hashable{
    var Name : String
    var Owner : String
    var Favorite : Bool
    
    init(Name: String, Owner: String) {
        self.Name = Name
        self.Owner = Owner
        self.Favorite = false
    }
    
    init(Name: String, Owner: String, Favorite: Bool) {
        self.Name = Name
        self.Owner = Owner
        self.Favorite = Favorite
    }
}
