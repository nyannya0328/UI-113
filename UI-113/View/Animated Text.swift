//
//  Animated Text.swift
//  UI-113
//
//  Created by にゃんにゃん丸 on 2021/01/28.
//

import SwiftUI

struct Animated_Text: View {
    
    
    var body: some View {
       Main()
    }
}

struct Animated_Text_Previews: PreviewProvider {
    static var previews: some View {
        Animated_Text()
    }
}


struct Main : View {
    @State var multicolor = false
    
    @Environment(\.presentationMode) var present
    var body: some View{
        
        VStack(spacing:25){
            
            HStack{
                
                Button(action: {
                    
                    present.wrappedValue.dismiss()
                    
                    
                }) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                }
                Spacer()
                
                
            }
            .padding(.horizontal)
        
           Spacer()
            
         
                
                TextShimer(text: "LION", multicolor: $multicolor)
                Toggle(isOn: $multicolor, label: {
                    
                    Text("ON")
                        .font(.title)
                        .foregroundColor(.gray)
                    
                    
                })
            
            
        }
        .padding()
        .preferredColorScheme(.dark)
        
    }
}

struct TextShimer : View {
    
    var text : String
    @State var animation = false
    @Binding var multicolor : Bool
    
    
    var body: some View{
        
        ZStack{
            
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.3))
            
            HStack(spacing:0){
                
                ForEach(0..<text.count,id:\.self){index in
                    
                    Text(String(text[text.index(text.startIndex,offsetBy: index)]))
                        .font(.system(size: 75, weight: .bold))
                        .foregroundColor(multicolor ?  RandomColor() : .white)
                      
                    
                }
            }
            .mask(
              Rectangle()
                    .fill(
                LinearGradient(gradient: .init(colors: [.red,.blue]), startPoint: .top, endPoint: .bottom)
                
                
            
            )
            .rotationEffect(.init(degrees: 70))
            .padding(20)
            .offset(x: -200)
            .offset(x: animation ? 500 : 0)
            
            )
           
            .onAppear(perform: {
                
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)){
                    
                    animation.toggle()
                    
                }
                
            })
                
                
        }
        
    }
    func RandomColor() -> Color{
        let color = UIColor(red:1, green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return Color(color)
        
    }
}
