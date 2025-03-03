//
//  ContentView.swift
//  SwiftUI_Shadow
//
//  Created by Ali Aytekin on 2.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("Tema1Background").edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 20){
                
                
                Text("Welcome").font(.largeTitle).bold().foregroundColor(Color("Tema1Foreground"))
                Spacer()
                HStack{
                    
                    Image("ali").resizable().resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
                        .clipShape(Circle()).shadow(color: Color("GolgeRenk"), radius: 4, x:-4, y:4)
                        .shadow(radius: 4, x: 4, y: 4)
                        .padding()
                    VStack(alignment: .leading, spacing: 10){
                        Text("ALİ AYTEKİN").bold()
                        Text("IOS & ANDROID").font(.headline)
                    }
                    Spacer()
                }.foregroundColor(Color("Tema1Foreground")).frame(width: 350,height: 100)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("Tema1Background"))
                        .shadow(color: Color("GolgeRenk"), radius: 4, x:-4, y:4)
                        .shadow(radius: 4, x: 4, y: 4))
                    
                Spacer()
                
                HStack(spacing: 80){
                    
                    Button(action: {}){
                        
                        Image(systemName: "lightbulb")
                    }.frame(width: 80, height: 80).background(
                        RoundedRectangle(cornerRadius: 20).fill(Color("Tema1Background"))
                            .shadow(color:Color.black.opacity(0.6),radius: 3, x: -4,y:-4)
                            .shadow(radius: 3,x:4 ,y:4)
                    )
                    Button(action: {}){
                        
                        Image(systemName: "lightbulb")
                    }.frame(width: 95,height: 95).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color("Tema1Background"), lineWidth: 4).shadow(color: Color("GolgeRenk"),radius: 3, x:4,y:4)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color("Tema1Background"), lineWidth: 4).shadow(radius: 3,x:-4,y:-4))
                    ).clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
           
        }
        
    }
}

#Preview {
    ContentView()
}
