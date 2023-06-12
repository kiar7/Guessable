//
//  AddInfoView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 25/10/22.
//

import SwiftUI
var player = Player(name: "", avatar: Avatar(image: Image(""),picked: false), score: 0, informations: ["", "", ""])
var tmp = player


var x = 0
var gameMode = GameManager()

var playerTest = Player(name: "", avatar: Avatar(image: Image(""),picked: false), score: 0, informations: ["", "", ""])
var playerTest2 = Player(name: "", avatar: Avatar(image: Image(""),picked: false), score: 0, informations: ["", "", ""])


var avatarArray =
[ Image ("baffoneFace"),
  Image ("bgirlFace"),
  Image ("coloratoFace"),
  Image ("mentoneFace"),
  Image ("ponytailFace"),
  Image ("crazyFace"),
  Image ("sergenteFace"),
  Image ("ballaFace"),
  Image ("funnyhairFace"),
  Image ("lombrosoFace")
  
]
struct AddInfoView: View {
   
    @State private var playerName: String = ""
    @State private var playerInfo1: String = ""
    @State private var playerInfo2: String = ""
    @State private var playerInfo3: String = ""
    
    @State var showGameLayoutView : Bool = false
    
    @State private var showError : Bool = false

    @State var myImage = gameManager.avatarArray[0].image
    
    var body: some View {
        
        NavigationStack{
            
            VStack  {
                HStack
                {
                    //🔙   ℹ️
                    
                    Text (".")
                        .frame(width: 250, height: 0)
                        .foregroundColor(.white)
                    
                    NavigationLink {
                        GameInstructionView()
                    } label: {
                        Image(systemName: "info.circle.fill").bold()
                    }

                    
                }
                HStack {
                    Text("Pick Your Avatar")
                        .font(.system(size: 25, weight: .semibold,design: .monospaced))
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

                HStack // ⬅️👤➡️
                {
                    
    //BOTTONE MENO
                    
                    Button {
                        if(x > 0 ){
                            x -= 1
                        }
                        else {
                            x = gameManager.avatarArray.count - 1
                        }
                        
                        print(x)
                        print(gameManager.avatarArray.count)
                        
                        myImage = gameManager.avatarArray[x].image

                        
                    } label: {
                        Image(systemName: "arrow.left.circle")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.teal, .blue],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                    }
                    ZStack{
                        Circle()
                            .stroke(lineWidth: 10)
                            .frame (width: 100, height: 100)
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.teal, .blue],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
    //MY IMAGE
                        myImage
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .foregroundColor(Color.gray)
                           
                        
                        
                    }.padding(5)
                    
                    
    //BOTTONE +
                    
                    Button {

                        if(x < gameManager.avatarArray.count - 1 ){
                            x += 1
                        }
                        else {
                            x = 0
                        }
                        
                        print(x)
                        print(gameManager.avatarArray.count)
                        
                        myImage = gameManager.avatarArray[x].image
                        
                    } label: {
                        Image(systemName: "arrow.right.circle")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.teal, .blue],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                    }
                }
                .frame(width: 200, height: 150)
                
                    
                            
                VStack // 📝
                {
                    TextField("Name ", text: $playerName).textFieldStyle(.roundedBorder)
                    
                    TextField("Your crazy experience ", text: $playerInfo1).textFieldStyle(.roundedBorder)
                    
                    
                    TextField("Your crazy experience ", text: $playerInfo2).textFieldStyle(.roundedBorder)
                    
                    
                    TextField("Your crazy experience ", text: $playerInfo3).textFieldStyle(.roundedBorder)
                }
                .padding(50)
 
                
                ZStack
                {
                    
                    /*
                     NavigationLink {
                     NextTurnView()
                     } label: {
                     Button (".")
                     {
                     
                     }
                     
                     .frame(width: 100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0)
                     .border(Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2)
                     .foregroundColor(.blue)
                     .background(Color.blue)
                     .cornerRadius(10.0)
                     .textCase(.uppercase)
                     }
                     
                     */
                    
     //BOTTONE OK
                    ZStack
                    {
                        //Test controllo sulle stringhe
                        
                         Button {
                             /*
                         if( playerName.count > 0 && playerInfo1.count > 0 && playerInfo2.count > 0 && playerInfo3.count > 0) {
                         gameManager.deleteAvatar(x: x )
                         x = 0
                         
                         playerTest2 = player.AddPlayer(name: playerName, avatar: Avatar (image: myImage,picked: true), info1: playerInfo1, info2: playerInfo2, info3: playerInfo3)
                         gameManager.AddPlayerInArray(playerToAdd: playerTest2)
                         
                         
                         
                         showGameLayoutView.toggle()
                         }
                         else {
                         
                         alertView()
                         }
                         
                         */
                        
                        gameManager.deleteAvatar(x: x )
                        x = 0
                        
                        playerTest2 = player.AddPlayer(name: playerName, avatar: Avatar (image: myImage,picked: true), info1: playerInfo1, info2: playerInfo2, info3: playerInfo3)
                        gameManager.AddPlayerInArray(playerToAdd: playerTest2)
                        
                        
                        
                        showGameLayoutView.toggle()
                        
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
                                
                                Text ("OK".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                        
                        }.navigationDestination(isPresented:  $showGameLayoutView) {
                            ControllerView()
                            
                        }
                        
                        
    
                    }.padding(30)
                    
                    
                    
                    
                } //Nav Stack
                
                
            }.navigationBarBackButtonHidden(true)
            
            
        }
        //Some View
        
        
    }
    
    
    
    
    
    struct AddInfoView_Previews: PreviewProvider {
        static var previews: some View {
            AddInfoView()
        }
    }
}


func alertView() {
    let alert = UIAlertController(title: "Wait !", message: "Write your name and all your three crazy experiences", preferredStyle: .alert)
    let ok = UIAlertAction(title: "OK", style: .destructive) 
    alert.addAction(ok)
    UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true,completion: {
        //stuff
    })
}
