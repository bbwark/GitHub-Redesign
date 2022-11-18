//
//  UserActivityGrid.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct UserActivityGrid: View {
    
    var User : GitUser
    
    var body: some View {
        Text("Placeholder for UserActivityGrid")
    }
}

struct UserActivityGrid_Previews: PreviewProvider {
    static var previews: some View {
        
        let anUser = GitUser()
        UserActivityGrid(User: anUser)
    }
}
