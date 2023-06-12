//
//  GameInstructionView.swift
//  ProjectLombroso
//
//  Created by Kiar on 31/10/22.
//

import SwiftUI

struct GameInstructionView: View {
    var body: some View {
        
        ZStack{
            
            
            
        
        
        VStack{
            
            HStack{
                Image (systemName: "info.circle.fill")
                    .foregroundColor(Color.blue)
                    
                    
                Text("Instructions ")
                    .font(.system(size: 20, weight:.semibold,design:.monospaced))
                    .bold()
                    .fontWeight(.bold)
                    
                    
                    
                
            }
           
           
            Divider()
                .frame(width: 0, height: 10.0)
                .foregroundColor(.cyan)
            

            
            Text ("1) Fill the 3 text boxes with 3 of YOUR life experiences, they can be funny, interesting, unusual or whatever comes to your mind (ex. I once was beaten up by a guy dressed as Santa Claus) but try your best to not put anything too Guessable, or you will be busted easily.")
                .multilineTextAlignment(.center)
                .frame(width: 280, height: 230)
            
            
                
            
            Text ("2) When the game starts, you'll see a card and if it's your turn you have to guess who wrote that experience by pointing at the person you think did it and then asking for validation. If you were right, press the green button! 🟩 otherwise press the red one 🟥 and pass the phone to the next player.")
                .multilineTextAlignment(.center)
                .frame(width: 280, height: 200)
            
            
    
            Text ("And remember, the turn doesn't have to stop if you guess incorrectly, you can still find out who did it and make him share his story.")
                .multilineTextAlignment(.center)
                .frame(width: 280, height: 120)
   
        }
        }.edgesIgnoringSafeArea(.all)
        
        
        
        
        
    }
}

struct GameInstructionView_Previews: PreviewProvider {
    static var previews: some View {
        GameInstructionView()
    }
}
