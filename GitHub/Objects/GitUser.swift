//
//  User.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import Foundation

struct GitUser {
    var ProfileImage : String
    var Username : String
    var Repositories : [Repository]
    var Organizations : [Organization]
    
    init(Username: String, ProfileImage: String, Repositories: [Repository], Organizations: [Organization]) {
        self.Username = Username
        self.ProfileImage = ProfileImage
        self.Repositories = Repositories
        self.Organizations = Organizations
    }
    
    //Temporary init for testing purpose
    init(){
        self.Username = "Me, a User"
        self.Repositories = [
            Repository(Name: "First", Owner: "Me, a User", Favorite: true),
            Repository(Name: "Second", Owner: "Me, a User", Favorite: true),
            Repository(Name: "Third", Owner: "Me, a User"),
            Repository(Name: "Fourth", Owner: "Me, a User", Favorite: true),
            Repository(Name: "Fifth", Owner: "Me, a User")
        ]
        self.ProfileImage = "ProfileIcon"
        self.Organizations = []
    }
    
    func FavRepos() -> [Repository]{
        var result : [Repository] = []
        
        for repo in Repositories {
            if repo.Favorite{
                result.append(repo)
            }
        }
        return result
    }
}
