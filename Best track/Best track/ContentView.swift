//
//  ContentView.swift
//  Best track
//
//  Created by NOUNI on 8/8/22.
//

import SwiftUI

extension Color {
    static let text = Color(red: 179 / 255, green: 192 / 255, blue: 196 / 255)
    static let ios = Color(red: 231 / 255, green: 104 / 255, blue: 88 / 255)
    static let gamedev = Color(red: 68 / 255, green: 93 / 255, blue: 124 / 255)
    static let web = Color(red: 64 / 255, green: 69 / 255, blue: 69 / 255)
    static let android = Color(red: 186 / 255, green: 217 / 255, blue: 74 / 255)
    static let Notwhite = Color(red: 246 / 255, green: 255 / 255, blue: 245 / 255)
    
}

struct ContentView: View {
    @State var image = "tf"
    var body: some View {
       
        ZStack{
            Color.Notwhite
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Text("ما هو المسار المفضل لديك؟")
                    .font(Font.custom("GraphikArabic-Semibold", size: 30))
                    .foregroundColor(.black)
                    .padding()
                    .padding(.bottom,40)
                
                                    
                Image(image)
                
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    
                
                VStack{
                    Button(action: {}) {
                Text("iOS")
                    
                    .padding()
                    .font(Font.custom("GraphikArabic-Regular", size: 30))
                    .foregroundColor(.Notwhite)
                    .frame(width: 240.0)
                    .background(Color.ios)
                    .cornerRadius(30)
                    .onTapGesture {
                        
                        if image == "tf" {
                            
                            image = "apl"
                        
                        }
                        else if image == "vs"{
                            
                            image = "apl"
                            
                        }
                        
                        else if image == "an" {
                            
                            image = "apl"
                            
                        }
                        
                        else if image == "un" {
                            
                            image = "apl"
                            
                        }
                        
                        else {
                            image = "tf"
                            
                        }
                        
                        
                    }
                    }.hoverEffect(.highlight)
                    
                    
                    Button(action: {}) {
                Text("GameDev")
                    .padding()
                    .font(Font.custom("GraphikArabic-Regular", size: 30))
                    .foregroundColor(.Notwhite)
                    .frame(width: 240.0)
                    .background(Color.gamedev)
                    .cornerRadius(30)
                    .onTapGesture {
                        
                        if image == "tf" {
                            
                            image = "un"
                        }
                        
                        else if image == "vs"{
                            
                            image = "un"
                            
                        }
                        
                        else if image == "an" {
                            
                            image = "un"
                            
                        }
                        
                        else if image == "apl" {
                            
                            image = "un"
                            
                        }
                        
                        else {
                            
                            image = "tf"
                            
                        }
                        
                        
                    }
                    }.hoverEffect(.highlight)
                    
                    
                    Button(action: {}) {
                Text("Android")
                    .padding()
                    .font(Font.custom("GraphikArabic-Regular", size: 30))
                    .foregroundColor(.Notwhite)
                    .frame(width: 240.0)
                    .background(Color.android)
                    .cornerRadius(30)
                    .onTapGesture {
                        
                        if image == "tf" {
                            
                            image = "an"
                        }
                        
                        else if image == "un"{
                            
                            image = "an"
                            
                        }
                        
                        else if image == "vs" {
                            
                            image = "an"
                            
                        }
                        
                        else if image == "apl" {
                            
                            image = "an"
                            
                        }
                        
                        else {
                            
                            image = "tf"
                            
                        }
                        
                        
                    }
                    }.hoverEffect(.highlight)
                
                    Button(action: {}) {
                Text("Web")
                    .padding()
                    .font(Font.custom("GraphikArabic-Regular", size: 30))
                    .foregroundColor(.Notwhite)
                    .frame(width: 240.0)
                    .background(Color.web)
                    .cornerRadius(30)
                    .onTapGesture {
                        
                        if image == "tf" {
                            
                            image = "vs"
                        }
                        
                        else if image == "un"{
                            
                            image = "vs"
                            
                        }
                        
                        else if image == "an" {
                            
                            image = "vs"
                            
                        }
                        
                        else if image == "apl" {
                            
                            image = "vs"
                            
                        }
                        
                        else {
                            
                            image = "tf"
                            
                        }
                        
                        
                    }
                    }.hoverEffect(.highlight)
                 
                
                }.padding()
                    .padding(.top,30)
                    
                
                Spacer()
                
                
                
                
                
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
