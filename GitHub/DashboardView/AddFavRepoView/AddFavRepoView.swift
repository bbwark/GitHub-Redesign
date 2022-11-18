//
//  AddFavRepoView.swift
//  GitHub
//
//  Created by Bruno De Vivo on 17/11/22.
//

import SwiftUI

struct AddFavRepoView: View {
    
    let BodyText = "Add favorite repositories here to have quick access at any time, without having to search"
    
    var body: some View {
        GeometryReader { geometry in
            let FrameWidth = geometry.size.width-0.0
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: FrameWidth, height: 170)
                            .cornerRadius(12.0)
                            .foregroundColor(Color("Color1"))
                        
                        VStack(spacing: 20) {
                            
                            Text(BodyText)
                                .multilineTextAlignment(.center)
                                .frame(width: FrameWidth-70)
                            Button {
                                
                            } label: {
                                AddFavButton(FrameWidth: FrameWidth)
                            }

                        }
                        .frame(width: FrameWidth, height: 170)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct AddFavRepoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            AddFavRepoView()
        }
    }
}
