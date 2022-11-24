//
//  ProfileView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct ProfileView: View {
    @State var User : GitUser
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Background").ignoresSafeArea()
                VStack{
                    ProfileIcon(User: User)
                    
                    List{
                        Section{
                            NavigationLink {
                                Text("Repositories")
                            } label: {
                                ProfileListDetail(WhichElement: .Repositories, User: User)}
                            
                            NavigationLink {
                                Text("Organizations")
                            } label: {
                                ProfileListDetail(WhichElement: .Organizations, User: User)}
                        }
                        
                        if !User.Repositories.isEmpty{
                            Section("Popular"){
                                ForEach(User.Repositories, id: \.self){ repo in
                                    NavigationLink(value: repo) {
                                        RepoListDetails(repo: repo)
                                    }
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Repository.self) { repo in
                        Text(repo.Name)
                    }
                }
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolBarProfileView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let anUser = GitUser()
        ProfileView(User: anUser)
    }
}
