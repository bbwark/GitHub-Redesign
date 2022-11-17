//
//  User.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import Foundation

struct User {
    var Username : String
    var Repositories : [Repository]?
    
    init(Username: String, Repositories: [Repository]?) {
        self.Username = Username
        self.Repositories = Repositories
    }
    
    
    //Temporary init for testing purpose
    init(){
        self.Username = "Me, a User"
        self.Repositories = [
            Repository(Name: "First", Owner: "Me, a User"),
            Repository(Name: "Second", Owner: "Me, a User"),
            Repository(Name: "Third", Owner: "Me, a User"),
            Repository(Name: "Fourth", Owner: "Me, a User"),
            Repository(Name: "Fifth", Owner: "Me, a User")
        ]
    }
}
