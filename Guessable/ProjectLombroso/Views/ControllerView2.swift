//
//  ControllerView2.swift
//  ProjectLombroso
//
//  Created by Jacques André Kerambrun on 01/11/22.
//

import SwiftUI


struct ControllerView2: View {
    var body: some View {
        
        let temp = gameManager.numberOfPlayer * 3
        
       
        if (gameManager.counterEndGame < temp){
                NextTurnView()
            }
            
            else {

                ResultsView()
                
            }
    }
}

struct ControllerView2_Previews: PreviewProvider {
    static var previews: some View {
        ControllerView()
    }
}
