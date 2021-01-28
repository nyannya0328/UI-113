//
//  CustomeTabView.swift
//  UI-113
//
//  Created by にゃんにゃん丸 on 2021/01/28.
//

import SwiftUI


struct CustomeTabView: View {
  
    
    var body: some View {
        
        Home()
       
    }
    
}

struct CustomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomeTabView()
    }
}

struct Home : View {
    @State var index = 0
    @State var expand = false
    @State var next = false
    @State var next1 = false
    
    @Environment(\.colorScheme) var scheme
    var body: some View{
        
        VStack{
            HStack(spacing:20){
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("p1")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .cornerRadius(10)
                    
                        
                })
               
                    
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.blue)
                    
                        
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "a.magnify")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.blue)
                })
                
            }
           
            .overlay(
            
                Text("Title")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            )
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(scheme == .dark ? Color.black : Color("t"))
            
            
            ZStack(alignment: .bottom){
                
                GeometryReader{_ in
                    
                    VStack{
                        
                        Text("")
                        
                    }
                    
                    
                }
                .background(Color.black.opacity(0.03))
                
                ZStack(alignment: .top){
                    
                    
                    
                    Circle().trim(from: 0.5, to: expand ? 1 : 0.5)
                        .fill(gra)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                    
                    ZStack{
                        
                        
                        Button(action: {
                            
                            withAnimation(Animation.easeOut){
                                next.toggle()
                            }
                            
                        }) {
                            VStack(spacing:15){
                                
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .font(.title)
                                    .frame(width: 20, height: 20)
                                
                                Text("Favorite")
                                    .bold()
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                            
                        }
                        .offset(y: 30)
                        
                        
                        Button(action: {
                            
                            
                          
                            
                           
                        }) {
                            VStack(spacing:15){
                                
                                Image(systemName: "gamecontroller.fill")
                                    .resizable()
                                    .font(.title)
                                    .frame(width: 20, height: 20)
                                
                                Text("GAME")
                                    .bold()
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                            
                        }
                        .offset(x: -100, y: 75)
                        
                        
                        Button(action: {}) {
                            VStack(spacing:15){
                                
                                Image(systemName: "ipad.homebutton")
                                    .resizable()
                                    .font(.title)
                                    .frame(width: 20, height: 20)
                                
                                Text("Ipad")
                                    .bold()
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                            
                        }
                        .offset(x: 100, y: 75)
                        
                        
                    }
                    
                }
                .offset(y: UIScreen.main.bounds.width / 1.6)
                .clipped()
                .opacity(expand ? 1 : 0)
                
            }
            
            Spacer()
            
            TabBar(index: $index, expand: $expand)
        }
        .edgesIgnoringSafeArea(.top)
        .fullScreenCover(isPresented: $next){
            
            Neruro()
            
        }
       
    }

}

struct TabBar : View {
    @Binding var index : Int
    @Binding var expand : Bool
   
    var body: some View{
        
        VStack{
            
            HStack{
                
                Button(action: {
                    
                    index = 0
                }, label: {
                    Image(systemName: "homepod")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 0 ?.orange : .blue)
                })
                
                Spacer(minLength: 0)
                
              
                
                
                Button(action: {
                    
                    index = 1
                }, label: {
                    Image(systemName: "ticket")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 1 ?.orange : .blue)
                })
                Spacer(minLength: 0)
                
                Button(action: {
                    withAnimation(Animation.default.speed(0.3)){
                        
                        expand.toggle()
                    }
                    
                    
                }) {
                    
                    Image(systemName: expand ?  "xmark" : "rosette")
                        .font(.title2)
                        .foregroundColor(Color("t"))
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                    
                }
                .offset(y: -20)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    index = 2
                }, label: {
                    Image(systemName: "key.icloud.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 2 ?.orange : .blue)
                })
                
                Spacer(minLength: 0)
                Button(action: {
                    
                    index = 3
                }, label: {
                    Image(systemName: "dial.min.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 3 ?.orange : .blue)
                })
                
            }
            .padding(.horizontal,25)
            .padding(.top,-10)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : 0)
          
           
            
        }
    }
}
