//
//  ProfileIcon.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct ProfileIcon: View {
    
    var User : GitUser
    
    var body: some View {
        VStack{
            Image(User.ProfileImage)
                .resizable()
                .frame(width: 120.0, height: 120.0)
                .cornerRadius(60.0)
                .shadow(radius: 3)
            Text(User.Username)
                .font(.title3)
                .foregroundColor(.gray)
        }
    }
}

struct ProfileIcon_Previews: PreviewProvider {
    static var previews: some View {
        let anUser = GitUser()
        ProfileIcon(User: anUser)
    }
}
