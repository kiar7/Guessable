//
//  PlayerSelectionView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 25/10/22.

// NDR. Ho compiuto una Refactory di tutte le classi principali per avere una struttura più pulita, sono diventate tutte funzioni che potete trovare come "filePrivate" alla fine del codice. le ho spostate sempre dentro View { ...} ma alla fine delle parentesi graffe, quindi fuori da some:View {...} ma sempre dentro View { ...} per intenderci



import SwiftUI

struct PlayerSelectionView: View {
    @State var counter = gameManager.numberOfPlayer

//ho rimosso il counter = 4 ma qui c'è un problema semantico, se partiamo da 4 dobbiamo creare un array già di 4 player vuoti e copiarli fino al 4 se ci sono più player fare poi l'append. Suggerisco di partire da zero e dare la possibilità di decrementare fino a zero ma se non si raggiungono almeno 4 player dare un avviso sotto e non procede al cambio di schermata
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                makePlayersNumber()
                makeNumber()
                HStack //
                {
                    ZStack // Green Button
                    {
                        makeMinusButton()
                    }
                    ZStack // Red Button
                    {
                        makePlusButton()
                    }
                }.frame(width: 200, height: 200)
                
                
                HStack {
                    
                    
                    Image ("baffoneFace")
                        .resizable()
                    Image ("funnyhairFace")
                        .resizable()
                    Image ("crazyFace")
                        .resizable()
                    Image ("bgirlFace")
                        .resizable()
                    
                    
                    
                    
                } .frame(width: 510, height: 120)
                
                
                
                NavigationLink {
                    
                    AddInfoView()
                } label: {
                    
                    
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
                        
                        Text ("Done".uppercased())
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    
                }
                
                
                
                
                
                
            }
            
        }
    } // FINISCE LA PARTE SINTETICA
    
    fileprivate func makePlayersNumber() -> some View {
        return Text("Number of players")
            .font(.title)
            .fontWeight(.semibold)
            .frame(width: 250, height: 120)
            .foregroundStyle(
                .linearGradient(
                    colors: [.teal, .blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
    }
    
    fileprivate func makeNumber() -> some View {
        return Text("\(counter)")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(width: 250, height: 110)
    }
    
    fileprivate func makeMinusButton() -> some View {
        return Button (action: {

            if (gameManager.numberOfPlayer>4) {
                            gameManager.numberOfPlayer = gameManager.numberOfPlayer - 1
                
                        }
            counter = gameManager.numberOfPlayer
            
        }){
            ZStack {
                RoundedRectangle(cornerRadius:25)
                   .foregroundStyle(
                        .linearGradient(
                            colors: [.red, .red],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
 
                
                Text ("Less")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 130.0, height: 3)
                    .shadow(radius: 10)
            }
            
            
            
            
            
        }
        .frame(width: 130, height: 50, alignment: .center)
        .cornerRadius(8)
    }
    
    
    fileprivate func makePlusButton() -> some View {
        return Button (action: {

            if (gameManager.numberOfPlayer < 10) {
                          gameManager.numberOfPlayer = gameManager.numberOfPlayer + 1

                      }
            counter = gameManager.numberOfPlayer

        }){
            ZStack {
                
               
               RoundedRectangle(cornerRadius:25)
                   .foregroundStyle(
                        .linearGradient(
                            colors: [.green, .green],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                    
                
                Text ("More")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 130.0, height: 3)
                    .shadow(radius: 10)
            }
        }
        .frame(width: 130, height: 50, alignment: .center)
        .cornerRadius(8)
    }
    
    
    
    
    struct PlayerSelectionView_Previews: PreviewProvider {
        static var previews: some View {
            PlayerSelectionView()
        }
    }
}
