//
//  SwiftUIView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 27/10/22.
//⭐️ Questa view mi serve solamente per capire come costruire un'altra possibile navigazione che non sia la navigation stack, e niente. Bisogna
/*
1. Costruire una State Var (nome show+[La view alla quale vuoi arrivare] : Bool = false
2. Fare una Navigarion Stack come abbiamo già fatto prima, subito dopo il someView
3. Creare un Bottone di tipo Button(action,label) e poi
4. Inserire nell'action la variabile State, però aggiungi .toggle() che fa funzionare per bene la variabile
5. label, vabbè è un Text che fai tu con tutte le cose grafiche
6. ❗️ Alla chiusura della VStack devi inserire un modifier .navigationDestination(isPresented: $ : [Nome Della State Var], destination: [nome della view dove vuoi arrivare con le tonde])
 7. ❗️ al punto sei, ricordati che dopo isPresented: ci vuole il simbolo del dollaro $
 8. ❗️ al punto sei, ricordati che la view di destinazione deve avere le parentesi tonde.


*/



import SwiftUI

struct SwiftUIView: View {
    
    @State var showMainMenuView : Bool = false
    
    //you know it's a property because lowerCase
    
    var body: some View {
        
        
        NavigationStack{
            
            
            
            VStack{
                
                
                Text ("Helo world")
                
               
                                
                
                
                
                
                Button {
      //
                    showMainMenuView.toggle()
                    
                } label: {
                    Text ("BLA")
                }
                
                
                
                
            } .navigationDestination(isPresented:  $showMainMenuView) {
                MainMenuView()
                //il dollaro dice che la State Var is linked to the navigation bar
                 
            }
            
        }
        
        
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
