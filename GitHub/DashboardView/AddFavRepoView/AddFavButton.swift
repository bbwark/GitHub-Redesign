//
//  AddFavButton.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct AddFavButton: View {
    
    let FrameWidth : CGFloat
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: FrameWidth-70, height: 50)
                .cornerRadius(12.0)
            .foregroundColor(Color("Color2"))
            Text("Add Favorite")
                .foregroundColor(Color.accentColor)
        }
    }
}

struct AddFavButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(.gray).ignoresSafeArea()
            AddFavButton(FrameWidth: 260.0)
        }
    }
}
