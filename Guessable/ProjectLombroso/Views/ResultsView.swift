//
//  ResultsView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 25/10/22.
//

import SwiftUI

struct ResultsView: View {
    /*var firstImage = gameManager.leaderBoardSort(temp: 0)
    var secondImage = gameManager.leaderBoardSort(temp: 1)
    var thirdImage = gameManager.leaderBoardSort(temp: 2)*/
    
    var winner = gameManager.leaderBoardSortTest()
    
    var fImage = gameManager.players[0].avatar.image
        .resizable()
    
    var sImage = gameManager.players[1].avatar.image
        .resizable()
    
    var tImage = gameManager.players[2].avatar.image
        .resizable()
    
   
    @State var showPlayAgainView : Bool = false
    
    @State var showMainMenuView : Bool = false
    
    
    var body: some View {
       
        NavigationStack{
            
            VStack{
                
                Text ("Results")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                Image(systemName: "trophy.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.yellow)
                    .padding()
                
                
                HStack (alignment: .center, spacing: 17)
                {

                    
                    tImage
                    
                    sImage
                    
                    fImage
                    
                    
                            
                }
                
                HStack (alignment: .center, spacing: 17) {
                    /*Text(gameManager.leaderBoardSortName(temp: 2))
                    Text(gameManager.leaderBoardSortName(temp: 1))
                    Text(gameManager.leaderBoardSortName(temp: 0))*/
                    
                    Text(winner[2].name)
                    Text(winner[1].name)
                    Text(winner[0].name)
                }
                    
                
              
                
                
                
                HStack (alignment: .bottom)
                 {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.brown)
                        .frame(width: 40, height: 120)
                        .padding()
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray)
                        .frame(width: 40, height: 150)
                        .padding()
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow)
                        .frame(width: 40, height: 200)
                        .padding()
                }
                .padding()
                
                
                Button("Play again") {
                    gameManager.Reset()
                    print(gameManager.currentPlayer)
                    print(gameManager.counterTest)
                    print(gameManager.numberOfPlayer)
                    print(gameManager.counterTest2)
                    print(gameManager.counterEndGame)
                    showPlayAgainView.toggle()
                }.navigationDestination(isPresented:  $showPlayAgainView) {
                    PlayerSelectionView()
                }.font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 5))
                
                Button("Main Menu") {
                    gameManager.Reset()

                    showMainMenuView.toggle()
                }.navigationDestination(isPresented:  $showMainMenuView) {
                    MainMenuView()
                }.font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 5))
                
    /*
                NavigationLink {
                    PlayerSelectionView()
                } label: {
                    Text ("Play Again".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 5))
                    
                } .padding()
          
                
                NavigationLink {
                    MainMenuView()
                } label: {
                    Text("Main Menu".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 5))
                }
                
     */
                
                
                
            }
            
        }.navigationBarBackButtonHidden(true)
        
        
    }
}







struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}



// mi serve capire i NavigationButton, che servono per naviagre, mentre i bottoni possono servire ad altro, sono quelli semplici che modificano le cose nelle pagine
