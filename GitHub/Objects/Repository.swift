//
//  Repository.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import Foundation

struct Repository {
    var Name : String
    var Owner : String
    var Favourite : Bool
    
    init(Name: String, Owner: String) {
        self.Name = Name
        self.Owner = Owner
        self.Favourite = false
    }
}
