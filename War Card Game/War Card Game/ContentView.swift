//
//  ContentView.swift
//  War Card Game
//
//  Created by Alex Hulford on 2023-06-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    dealCards()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        
        
        
    }
    
    func dealCards(){
        // Randomize the players card
        let playerNum = Int.random(in: 2...14)
        playerCard = "card" + String(playerNum)
        
        // Randomize the cpu card
        let cpuNum = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuNum)

        // Update the scores
        if (playerNum > cpuNum){
            playerScore += 1
        } else if (playerNum < cpuNum) {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
