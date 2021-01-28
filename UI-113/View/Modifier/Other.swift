//
//  Other.swift
//  UI-113
//
//  Created by にゃんにゃん丸 on 2021/01/28.
//

import SwiftUI

struct Other: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label.background(Color("n").clipShape(Circle()))
            .overlay(
                
                VStack{
                    
                    if configuration.isPressed{
                        
                        
                    Circle()
                        .stroke(Color.black.opacity(0.05),lineWidth: 4)
                        .shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: 5)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.2), radius: 3, x: -5, y: -5)
                        .clipShape(Circle())
                    }
                }
            
            
            )
            .shadow(color: Color.black.opacity(configuration.isPressed ? 0 : 0.2), radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(configuration.isPressed ? 0 : 0.6), radius: 5, x: -5, y: -5)
        
    }
}

