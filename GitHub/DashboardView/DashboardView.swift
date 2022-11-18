//
//  DashboardView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct DashboardView: View {
    @State var User : GitUser
    
    var body: some View {
        NavigationStack{
            List{
                Section {
                    ForEach(User.FavRepos(), id: \.self){ repo in
                        NavigationLink(value: repo) {
                            RepoListDetails(repo: repo)
                        }
                    }
                } header: {
                    HStack{
                        Text("Favorite")
                        Spacer()
                        Button {
                            //opens a modal to add and remove repos from favorites
                        } label: {
                            Image(systemName: "ellipsis")
                        }
                        .foregroundColor(.gray)
                        
                    }
                } footer: {
                    if User.FavRepos().isEmpty{
                        AddFavRepoView()
                            .padding(.bottom, 150.0)
                    }
                }
                
                Section{
                    //Displaying of recent issues and pull request (data have to be extracted from GitHub)
                } header: {
                    Text("Recent")
                } footer: {
                    //if there are no recent
                    RecentMissing()
                        .padding(.bottom, 100.0)
                }
                
                Section("My Work"){
                    NavigationLink(destination: Text("Issues")) {
                        MyWorkListDetail(WhichElement: .Issues)
                    }
                    NavigationLink(destination: Text("Pull Request")) {
                        MyWorkListDetail(WhichElement: .PullRequest)
                    }
                    NavigationLink(destination: Text("Discussions")) {
                        MyWorkListDetail(WhichElement: .Discussions)
                    }
                    NavigationLink(destination: Text("Repositories")) {
                        MyWorkListDetail(WhichElement: .Repositories)
                    }
                    NavigationLink(destination: Text("Organizations")) {
                        MyWorkListDetail(WhichElement: .Organizations)
                    }
                    
                }
            }
            .navigationDestination(for: Repository.self) { repo in
                Text(repo.Name)
            }
            .navigationTitle("Dashboard")
            .toolbar {
                ToolBarDasboardView()
            }
        }
    }
    
    struct DashboardView_Previews: PreviewProvider {
        static var previews: some View {
            let anUser = GitUser()
            DashboardView(User: anUser)
        }
    }
}
