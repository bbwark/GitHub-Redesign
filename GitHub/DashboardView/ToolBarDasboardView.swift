//
//  ToolBarDasboardView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct ToolBarDasboardView: View {
    var body: some View {
        NavigationLink {
            Text("Notifications")
        } label: {
            Image(systemName: "bell")
        }

    }
}

struct ToolBarDasboardView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarDasboardView()
    }
}
