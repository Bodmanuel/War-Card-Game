//
//  SplashScreenView.swift
//  War-Challenge
//
//  Created by AYOMIKUN's Macbook Pro on 14/06/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        }else {
            
            ZStack {
                
                
                
                VStack{
                    Image("Splashscreen")
                    
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill)
                        .font(.system(size: 18))
                    
                }
                
                
                VStack{
                    
                    Text("WAR CARD GAME ")
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
                        .font(Font.custom("Baskerville-Bold", size: 40))
                        .padding([.leading, .bottom, .trailing])
                    
                    
                    
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                    
                }
            }
            
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
                
                
                
        }
        
       
        }
        
        
        
    }
    
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
    

