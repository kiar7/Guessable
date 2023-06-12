//
//  ControllerView.swift
//  ProjectLombroso
//
//  Created by Jacques André Kerambrun on 29/10/22.
//

import SwiftUI
//test


struct ControllerView: View {
    var body: some View {
        if (gameManager.currentPlayer < gameManager.numberOfPlayer - 1){
                NextPlayerInfoView()
            }
            
            else {
                
                GameLayoutView(playerTest: player, test: gameManager)
                
            }
    }
}

struct ControllerView_Previews: PreviewProvider {
    static var previews: some View {
        ControllerView()
    }
}
