//
//  ToolBarProfileView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct ToolBarProfileView: View {
    var body: some View {
        HStack{
            NavigationLink {
                Text("Settings")
            } label: {
                Image(systemName: "gear")
            }

            Button {
                //open modal for sharing GitHub user link
            } label: {
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
}

struct ToolBarProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarProfileView()
    }
}
