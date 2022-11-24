//
//  RepoListDetails.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct RepoListDetails: View {
    
    var repo : Repository
    
    var body: some View {
        
        HStack{
            ZStack {
                Rectangle()
                    .frame(width: 28.0, height: 28.0)
                    .foregroundColor(.white)
                Image(systemName: "bookmark.square.fill")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                .foregroundColor(.gray)
            }
            VStack(alignment: .leading){
                Text(repo.Name)
                    .font(.headline)
                Text(repo.Owner)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        
    }
}

struct RepoListDetails_Previews: PreviewProvider {
    static var previews: some View {
        
        let aRepo = Repository(Name: "Pino", Owner: "Mauro")
        
        RepoListDetails(repo: aRepo)
    }
}
