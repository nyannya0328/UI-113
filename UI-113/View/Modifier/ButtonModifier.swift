//
//  ButtonModifier.swift
//  UI-113
//
//  Created by にゃんにゃん丸 on 2021/01/28.
//

import SwiftUI

struct ButtonModifier: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.background(Color("n").cornerRadius(15))
        
            .overlay(
                VStack{
                    if configuration.isPressed{
                        
                        RoundedRectangle(cornerRadius: 15).stroke(Color.black.opacity(0.5),lineWidth: 4)
                            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: 5)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(color: Color.black.opacity(0.2), radius: 3, x: -5, y: -5)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    }
                    
                }
            
            )
            .shadow(color: Color.black.opacity(configuration.isPressed ? 0 : 0.2), radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(configuration.isPressed ? 0 : 0.6), radius: 5, x: -5, y: -5)
    }
    
}
