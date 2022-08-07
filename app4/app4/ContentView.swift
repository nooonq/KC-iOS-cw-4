//
//  ContentView.swift
//  app4
//
//  Created by NOUNI on 8/6/22.
//

import SwiftUI

extension Color {
    static let navyBlue = Color(red: 4 / 255, green: 66 / 255, blue: 191 / 255)
    static let Notwhite = Color(red: 246 / 255, green: 255 / 255, blue: 245 / 255)
}

struct ContentView: View {
    @State var finalGrade  = ""
    @State var grade = ""
    
    var body: some View {
        
        
        
        ZStack{
            Image("op")
                .resizable()
                .ignoresSafeArea()
                .onTapGesture(count: 1) {
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }
        
            VStack{
                Text("حاسبة الدرجات")
                    .foregroundColor(Color.navyBlue)
                    .font(Font.custom("GraphikArabic-Medium", size: 30 ))
                    .padding()
                    .padding(.bottom,20)
                    
                    
                Spacer()
                
                ZStack{
                    if finalGrade.isEmpty {
                        Text("grade here")
                            .foregroundColor(Color.Notwhite.opacity(0.8))
                            
                            .font(Font.custom("GraphikArabic-Super", size: 60 ))
                            
                    }
                TextField("", text: $finalGrade)
                    .frame(width: 330.0, height: 150.0)
                    .multilineTextAlignment(.center)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                    .accentColor(.navyBlue)
                    .keyboardType(.decimalPad)
                    .font(Font.custom("GraphikArabic-Super", size: 60 ))
                    .foregroundColor(.navyBlue)
                    
                    
                    
                    
                }
                    
                Button(action: {}) {
                Text("احسب درجتي")
                    .foregroundColor(.navyBlue)
                    .hoverEffect(.lift)
                    .font(Font.custom("GraphikArabic-Regular", size: 20 ))
                    .padding()
                    .background(Color.Notwhite)
                    .cornerRadius(20)
                    .onTapGesture {
                        
                        if (Double(finalGrade) ?? 0) >= 90  {
                            
                            grade = "امتياز🤩"
                        }
                        
                        else if (Double(finalGrade) ?? 0) >= 80 {
                            
                            grade = "جيد جدا😄"
                        }
                        
                        else if (Double(finalGrade) ?? 0) >= 70 {
                            
                            grade = "جيد🙂"
                        }
                        
                        else if (Double(finalGrade) ?? 0) >= 60 {
                            
                            grade = "مقبول🙃"
                            
                        }
                        
                        else if (Double(finalGrade) ?? 0) < 60 {
                            
                            grade = "راسب🫣"
                            
                        }
                        
                    }.hoverEffect(.highlight)
                        
                        
                    }
                    
                        
                        
                    Spacer()
                
                
                
                
                Text("لقد حصلت على درجة")
                    .foregroundColor(.navyBlue)
                    .font(Font.custom("GraphikArabic-Medium", size: 25 ))
                    .padding(.top,100)
                    
                    
                
                Spacer()
                
                
                Text(grade)
                    .padding(.bottom , 100)
                    .foregroundColor(.navyBlue)
                    .font(Font.custom("GraphikArabic-Super", size: 77 ))
                    
                    
                
                
                    
                
                
                
                
                
            }.padding()
            
            
        
        
        }
    }
}
extension UIApplication {
   func endEditing() {
       sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
