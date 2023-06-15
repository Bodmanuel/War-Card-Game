//
//  ContentView.swift
//  War-Card Game
//
//  Created by AYOMIKUN's Macbook Pro on 29/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    
    
    
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image (cpuCard)
                    Spacer()
                    
                    
                }
                Spacer()
                
               
                
                Spacer()
                
                ZStack{
                    Spacer()
                    
                    Button {
                        
                        
                        //Generate a random number between 2 and 14
                        
                        let playerRand = Int.random(in:  2...14)
                        let cpuRand = Int.random(in: 2...14)
                       
                        
                        
                        //update the cards
                        
                        playerCard = "card" + String (playerRand)
                        cpuCard = "card" + String (cpuRand)
                        
                        
                        //update the scores
                        if playerRand > cpuRand {
                            playerScore += 1
                        }
                        
                        else if cpuRand > playerRand{
                            cpuScore += 1
                        }
                        else {
                            cpuScore += 1
                        }
                       
                        
                        
                        
                    }
                    
                    
                
                
                label: {
                        Image("dealbutton")
                            
                        
                        
                        
                        }
            
            
                }
                
                Spacer()
               
                
                HStack{
                    
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.orange)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.red)
                            
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.orange)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.red)
                        
                    }
                    Spacer()
                    
                }
               Spacer()
                
                
            }
            
            
            
        }
        
        
    }
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
