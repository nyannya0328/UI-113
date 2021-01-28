//
//  Top.swift
//  UI-113
//
//  Created by にゃんにゃん丸 on 2021/01/28.
//

import SwiftUI

struct Top: ViewModifier {
    func body(content: Content) -> some View {
        content.background(Color("n"))
            .cornerRadius(15)
            .padding(20)
            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.2), radius: 6, x: 8, y: 8)
        
            
    }
    }


