//
//  GameManager.swift
//  ProjectLombroso
//
//  Created by Kiar on 26/10/22.
//


import Foundation
import SwiftUI


class GameManager : ObservableObject
{
    var players =
     [Player(name: "", avatar: Avatar(image: Image(""),picked: false), score: 0, informations: ["", "", ""])]
     
     var avatarArray = [
         Avatar(image: Image("baffoneFace"),picked: false),
         Avatar(image: Image("ballaFace"),picked: false),
         Avatar(image: Image("bgirlFace"),picked: false),
         Avatar(image: Image("coloratoFace"),picked: false),
         Avatar(image: Image("crazyFace"),picked: false),
         Avatar(image: Image("funnyhairFace"),picked: false),
         Avatar(image: Image("lombrosoFace"),picked: false),
         Avatar(image: Image("mentoneFace"),picked: false),
         Avatar(image: Image("ponytailFace"),picked: false),
         Avatar(image: Image("sergenteFace"),picked: false)
     ]
    var currentPlayer : Int
    var numberOfPlayer = 4
    
    var currentTurn = 1
    
    var counterTest = 0
    
    var counterTest2 = 0
    
    var counterEndGame = 0
    
    var index = 0
    
    var tester = 1
    
    
    //Costruttore
    init()
    {
        self.players = []
        self.currentPlayer = -1
    }
    
    
    //se un giocatore fa una scelta corretta incrementa di uno il suo punteggio
    func AddPoint(position: Int)
    {
//        print(players.endIndex)
//        print(players.count)
        players[position].score += 1
        
        
    }
    
    func leaderBoardSort(temp : Int) -> Image {
        
        players.sort { $0.score < $1.score }
        return players[temp].avatar.image
    }
    
    func leaderBoardSortName(temp : Int) -> String {
        
        players.sort { $0.score < $1.score }
        return players[temp].name
    }
    
    
    
    func leaderBoardSortTest() -> [Player]
    {
        var winner : [Player]
        
        players.sort{$0.score > $1.score}
        
        winner = players
        
        return winner
    }
    

    
    //la funzione chiama un'altra funzione che sceglie un player randomico nell'array e ritorna la sua current question
    func RandomizePlayer(currPlayer: Player, currP : Int) -> String
    {
       
            let randomIndex = SelectPlayer(currentP: currP)

            players[randomIndex].currentQuestion += 1
            
            if(players[randomIndex].currentQuestion > 1)
            {
                print("il player in posizione \(randomIndex) ha esaurito le informazioni")
                players[randomIndex].founded = true
                
            }
        
            print("random index: \(randomIndex)")
            return players[randomIndex].informations[players[randomIndex].currentQuestion]
        }
    
    
    //prende un ingresso un player e ne sceglie uno random finchè questi due sono diversi e ritorna quello scelto
    
    var count = 0
    
    func SelectPlayer(currentP : Int) -> Int
        {
            
            var randomInt = Int.random(in: 0 ..< players.endIndex )//qui è strano senza il -1 mi da out of range
            
            
            
            while(players[randomInt].id == players[currentP].id || players[randomInt].founded == true)
            {
       
                if(players[randomInt].id == players[currentP].id)
                {
                    print("l'informazione è del giocatore stesso \(players[randomInt].id) è uguale a  \(players[currentP].id) in posizione \(randomInt)")
                }
                else if (players[randomInt].founded == true)
                {
                    print("il player in posizione \(randomInt) ha esaurito le informazioni(NEL WHILE)")
                }
                
                print("Sto nel while")
                count = count + 1
               
                randomInt = Int.random(in: 0 ..< players.endIndex ) //non funziona il primo
               
                if count > 90 {
                    print("ha looppato")
                    break
                }
            }
         
            return randomInt
        }
    
    
    
    //aggiunge una variabile di tipo player e lo aggiunge in un array ma prima incrementa il numero di giocatori attivi
        func AddPlayerInArray(playerToAdd : Player)
        {
            
            currentPlayer += 1
            players.append(contentsOf: [playerToAdd])
        }
    
    func Reset() {
        players.removeAll()
        gameManager.currentPlayer = -1
        gameManager.numberOfPlayer = 4
        
        gameManager.currentTurn = 0
        
        gameManager.counterTest = 0
        
        gameManager.counterTest2 = 0
        
        gameManager.counterEndGame = 0
        
        gameManager.avatarArray.removeAll()
        gameManager.avatarArray = [
            Avatar(image: Image("baffoneFace"),picked: false),
            Avatar(image: Image("ballaFace"),picked: false),
            Avatar(image: Image("bgirlFace"),picked: false),
            Avatar(image: Image("coloratoFace"),picked: false),
            Avatar(image: Image("crazyFace"),picked: false),
            Avatar(image: Image("funnyhairFace"),picked: false),
            Avatar(image: Image("lombrosoo"),picked: false),
            Avatar(image: Image("mentoneFace"),picked: false),
            Avatar(image: Image("ponytailFace"),picked: false),
            Avatar(image: Image("sergenteFace"),picked: false)
        ]
        
    }
    


       

    
       
       
       func avatarMinus(x: Int)-> Image {
           var temp = x

           if (temp <= 0 && avatarArray[9].picked == true) {
               temp = 1
           }
           return avatarArray[temp].image
       }
    
    func deleteAvatar(x: Int) {
        let temp = x
        avatarArray.remove(at: temp)
    }
    
    func testRandomize(currP: Int) -> String {
        let randomIndex = testSelectPlayer(currentP: currP)

        players[randomIndex].currentQuestion += 1
        
        if(players[randomIndex].currentQuestion > 1)
        {
            print("il player in posizione \(randomIndex) ha esaurito le informazioni")
            players[randomIndex].founded = true
            
        }
    
        print("random index: \(randomIndex)")
        return players[randomIndex].informations[players[randomIndex].currentQuestion]
    }
    
    func testSelectPlayer(currentP: Int) -> Int {
        
        var randomInt = Int.random(in: 0 ..< players.endIndex )//qui è strano senza il -1 mi da out of range
        print("il primo randomInt è: \(randomInt)")
        
        
        while(players[randomInt].id == players[currentP].id || players[randomInt].founded == true)
        {
   
            if(players[randomInt].id == players[currentP].id) {
                print("l'informazione è del giocatore stesso \(players[randomInt].id) è uguale a  \(players[currentP].id)")
            }
            else if (players[randomInt].founded == true)
            {print("Informazioni esaurite")
            }
     
            print("Sto nel while")
            count = count + 1
           
            randomInt = Int.random(in: 0 ..< players.endIndex ) //non funziona il primo
            print("il nuovo randomInt è: \(randomInt)")
            if count > 90 {
                print("ha looppato")
                break
            }
        }
     
        return randomInt
    }
    
}//fine classe

//
