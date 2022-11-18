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
                                
                    UserActivityGrid(User: User)
                    
                    List{
                        Section{
                            NavigationLink {
                                Text("Repositories")
                            } label: {
                                HStack{
                                    Image(systemName: "bookmark.square")
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)
                                        .scaledToFit()
                                        .foregroundColor(.gray)
                                    VStack(alignment: .leading){
                                        Text("Repositories")
                                            .font(.headline)
                                        Text("\(User.Repositories.count)")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                            
                            NavigationLink {
                                Text("Organizations")
                            } label: {
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
