//
//  RecentMissing.swift
//  GitHub
//
//  Created by Bruno De Vivo on 18/11/22.
//

import SwiftUI

struct RecentMissing: View {
    
    let BodyText = "Issues and Pull Requests that you've interacted with recently will appear here"
    
    var body: some View {
        GeometryReader { geometry in
            let FrameWidth = geometry.size.width-0.0
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: FrameWidth, height: 110)
                            .cornerRadius(12.0)
                            .foregroundColor(Color("Color1"))
                        
                        Text(BodyText)
                            .multilineTextAlignment(.center)
                            .frame(width: FrameWidth-70)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct RecentMissing_Previews: PreviewProvider {
    static var previews: some View {
        RecentMissing()
    }
}
