//
//  MyWorkListDetail.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct MyWorkListDetail: View {
    
    var WhichElement : MyWorkList
    
    var body: some View {
        
        switch WhichElement {
        case .Issues:
            HStack {
                Image(systemName: "doc.circle.fill")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                .foregroundColor(.green)
            Text("Issues")
            }
        case .PullRequest:
            HStack{
                Image("Git Pull Request Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                Text("Pull Request")
            }
        case .Discussions:
            HStack{
                Image(systemName: "message.circle.fill")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                    .foregroundColor(.purple)
                Text("Discussions")
            }
        case .Repositories:
            HStack{
                Image(systemName: "bookmark.square")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                    .foregroundColor(.gray)
                Text("Repositories")
            }
        case .Organizations:
            HStack{
                Image(systemName: "building.2.fill")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .scaledToFit()
                    .foregroundColor(.orange)
                Text("Organizations")
            }
        }
    }
}

struct MyWorkListDetail_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading){
            MyWorkListDetail(WhichElement: .Issues)
            MyWorkListDetail(WhichElement: .PullRequest)
            MyWorkListDetail(WhichElement: .Discussions)
            MyWorkListDetail(WhichElement: .Repositories)
            MyWorkListDetail(WhichElement: .Organizations)
        }
    }
}
