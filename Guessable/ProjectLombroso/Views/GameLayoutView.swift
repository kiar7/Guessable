//
//  GameLayoutView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 25/10/22.
//

import SwiftUI

struct GameLayoutView: View {
    var playerTest : Player
    var test: GameManager
    @State var showControllerView2 : Bool = false
    
    @State var countDownTimer = 5
    @State var timerIsRunning = true
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        let myImage = gameManager.players[gameManager.counterTest].avatar.image
        
        
        VStack {
            
            //tutta la seguente parte commentata serve per avere il timer ma non cambia schermata
            
           /* Text("\(countDownTimer)")
                .onReceive(timer){
                    _ in
                    if((countDownTimer > 0) && timerIsRunning)
                    {
                        countDownTimer -= 1
                    }
                    else
                    {
                        timerIsRunning = false
                        NextTurnView()
                    }
                }
                .font(.system(size: 90, weight: .bold ))*/
            
            HStack (alignment: .center, spacing: 50, content:
            {
                
                ZStack{
                    
                    Circle()
                        .trim (from: 0.2, to: 1.0)
                        .stroke(Color.blue, lineWidth: 10)
                        .frame (width: 70, height: 70)
                    
                   myImage
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color.gray)
                        .padding()
                    
                   /*
                    Image ("colorato")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.gray)
                        .padding()
                    */
                    
                
                    
                }
                
                
                Text(gameManager.players[gameManager.counterTest].name)
               // Text("Nome")

               // Text(changeNameTurn(turn:nextPlayer, gameManager: gameManager))

                    .font(.system(size: 40, weight: .semibold,design: .monospaced))
                    .fontWeight(.black)
                    .multilineTextAlignment(.trailing)
                    .lineLimit(15)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.teal, .blue],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
           //C'è da mettere ancora dei colori precisi che sostituiscano il .green e .blue del testo cesare e questo lo faccio quando avrò capito come usare bene i Litteral Colors https://www.youtube.com/watch?v=EPoxQHwVnj0 a questo indirizzo
                
                
            })
            HStack {
                Text("Your score: ")  .font(.system(size: 15, weight: .semibold,design: .monospaced))
                    .fontWeight(.black)
                    .multilineTextAlignment(.trailing)
                    .lineLimit(7)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.teal, .blue],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                Text(String(gameManager.players[gameManager.counterTest].score))  .font(.system(size: 15, weight: .semibold,design: .monospaced))
                    .fontWeight(.black)
                    .multilineTextAlignment(.trailing)
                    .lineLimit(7)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.teal, .blue],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }.padding(2)
            
            Text("Guess who did it:")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .padding(10)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 10)
                    .frame(width: 300, height: 350)
                    .padding(20)
                    .layoutPriority(1)
                    .overlay(Text(gameManager.RandomizePlayer(currPlayer: gameManager.players[gameManager.counterTest], currP: gameManager.counterTest)))
              
            }
                

                        
           
            HStack{
                
                Button {
  
                    gameManager.counterEndGame = gameManager.counterEndGame + 1
                    
                    if(gameManager.counterTest2 < gameManager.numberOfPlayer - 1) {
                        gameManager.counterTest2 = gameManager.counterTest2 + 1
                    }
                    else {
                        gameManager.counterTest2 = 0
                    }
                    
                    showControllerView2.toggle()
                } label: {
                    Text("WRONG")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.vertical)
                        .background(
                            Color.red
                                .cornerRadius(10)
                                .shadow(radius: 5))
                    
                }.navigationDestination(isPresented:  $showControllerView2) {
                    ControllerView2()
                }
                
                Button{
                   
                    gameManager.counterEndGame = gameManager.counterEndGame + 1
                    
                    gameManager.AddPoint(position: gameManager.counterTest)
                    
                    if(gameManager.counterTest2 < gameManager.numberOfPlayer - 1) {
                        gameManager.counterTest2 = gameManager.counterTest2 + 1
                    }
                    else {
                        gameManager.counterTest2 = 0
                    }
                    showControllerView2.toggle()
                }label: {
            
            Text("GOT IT")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .padding(.vertical)
                .background(
                    Color.green
                        .cornerRadius(10)
                        .shadow(radius: 5))
        }.navigationDestination(isPresented:  $showControllerView2) {
            ControllerView2()
        }
        
                
            }
            
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct GameLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        GameLayoutView(playerTest: player, test: gameMode)
    }
}

//queste due funzioni dovranno essere messe nei bottini delle risposte
// con l'incremento della variabile "nextTurn" e poi azzerarla quando
//tutti i giocatori avranno completato il primo turno





