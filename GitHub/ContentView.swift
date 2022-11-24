//
//  ContentView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var user = GitUser()
    
    var body: some View {
        TabView {
            Group{
                DashboardView(User: user)
                    .tabItem {Label("Dashboard", systemImage: "house")}
                
                ExploreView()
                    .tabItem {Label("Explore", systemImage: "magnifyingglass")}
                
                ProfileView(User: user)
                    .tabItem {Label("Profile", systemImage: "person.crop.circle")}
                    .toolbar(.visible, for: .tabBar)
                    .toolbarBackground(Color(uiColor: .systemGray6), for: .tabBar)
            }
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
