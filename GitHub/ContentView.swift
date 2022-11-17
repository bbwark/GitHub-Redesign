//
//  ContentView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView{
                Dashboard()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Dashboard")
                    }
                Text("Explore")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")
                    }
                Profile()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
