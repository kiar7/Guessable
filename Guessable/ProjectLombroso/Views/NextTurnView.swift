//
//  NextTurnView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 25/10/22.



//IL GUAIO GIGANTE DI QUESTA PAGINA è che la schermata dovrà cambiare nome del giocatore in base al giocatore che sta facendo tutto

import SwiftUI

struct NextTurnView: View {
    @State var showNextGameLayoutView2: Bool = false
    var temp = 0
    var body: some View {
       
        
        
        VStack {

            Text(gameManager.players[gameManager.counterTest2].name)
                .font(.system(size: 50, weight: .semibold,design: .serif))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundStyle(
                    .linearGradient(
                        colors: [.teal, .blue],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
  
            
            Text("it's your turn !")
                .font(.system(size: 80, weight: .semibold,design: .serif))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .lineLimit(13)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.teal, .blue],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )

            
        }
        ZStack
        {
            Button {
                
                
                if (gameManager.counterTest < gameManager.numberOfPlayer - 1) {
                    gameManager.counterTest = gameManager.counterTest + 1
                    
                }
                else
                {
                    gameManager.counterTest = 0
                }
                
                showNextGameLayoutView2.toggle()
            }
        label: {
            ZStack{
                
                RoundedRectangle(cornerRadius:10)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.teal, .blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                    .frame(width: 120, height: 50)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Text ("OK".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
                
            }.navigationDestination(isPresented:  $showNextGameLayoutView2) {
                GameLayoutView(playerTest: player, test: gameManager)
                
            }
            
            
        }.navigationBarBackButtonHidden(true)
       
        
    }
}

struct NextTurnView_Previews: PreviewProvider {
    static var previews: some View {
        NextTurnView()
    }
}

