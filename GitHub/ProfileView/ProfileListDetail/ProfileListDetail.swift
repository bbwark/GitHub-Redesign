//
//  ProfileListDetail.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct ProfileListDetail: View {
    
    var WhichElement : ProfileList
    var User : GitUser
    
    var body: some View {
        
        
        switch WhichElement {
        case .Repositories:
                HStack{
                    ZStack {
                        Rectangle()
                            .frame(width: 27.0, height: 27.0)
                            .foregroundColor(.white)
                        Image(systemName: "bookmark.square")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .scaledToFit()
                        .foregroundColor(.gray)
                    }
                    VStack(alignment: .leading){
                        Text("Repositories")
                            .font(.headline)
                        Text("\(User.Repositories.count)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
        case .Organizations:
            HStack{
                Image(systemName: "building.2.fill")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                    .foregroundColor(.orange)
                VStack(alignment: .leading){
                    Text("Organizations")
                        .font(.headline)
                    Text("\(User.Organizations.count)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        
    }
}

struct ProfileListDetail_Previews: PreviewProvider {
    static var previews: some View {
        let anUser = GitUser()
        VStack {
            ProfileListDetail(WhichElement: .Repositories, User: anUser)
            ProfileListDetail(WhichElement: .Organizations, User: anUser)
        }
    }
}
