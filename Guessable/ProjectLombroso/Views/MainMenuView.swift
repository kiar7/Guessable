//
//  MainPageView.swift
//  ProjectLombroso
//
//  Created by Lorenzo on 25/10/22.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        
        
        NavigationStack{
        
        VStack{
   
                Text ("Guessable")
                    .font(.system(size: 30, weight:.semibold,design:.monospaced))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.teal, .blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                 
                ZStack {
                    NavigationLink {
                        PlayerSelectionView()
                    }label: {
                        
                        ZStack{

                            RoundedRectangle(cornerRadius:25)
                               .foregroundStyle(
                                    .linearGradient(
                                        colors: [.teal, .blue],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing))
                                .frame(width: 300.0, height: 200)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            HStack{
                               
                                Image(systemName:"s.square.fill" )
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color.white)
                                
                                Text ("   simple mode")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading)
                            
                            } //HSTACK
                            
                        }//ZStack
                       
                    }// Label

                    
                    
                    
                } // ZStack
                .cornerRadius(/*@START_MENU_TOKEN@*/19.0/*@END_MENU_TOKEN@*/)
                
            
            
            ZStack {
                
                RoundedRectangle(cornerRadius:25)
                    .fill(Color.gray)
                    .frame(width: 300, height: 200)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                HStack {
                    
                    Image(systemName:"i.square.fill" )
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.white)
                    
                    Text ("impostor mode")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                }
                .cornerRadius(/*@START_MENU_TOKEN@*/19.0/*@END_MENU_TOKEN@*/)
                
            }
            
            
        }
        }
        
        
        
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
        
    }
}
