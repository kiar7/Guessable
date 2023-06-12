//
//  NextPlayerInfoView.swift
//  ProjectLombroso
//
//  Created by Jacques André Kerambrun on 29/10/22.
//

import SwiftUI

struct NextPlayerInfoView: View {
    
    
    @State var showAddInfoView : Bool = false
    
    
    var body: some View {
        
        NavigationStack{
           
            
            Text("Pass the iPhone to the next player ")
                .font(.system(size: 60, weight: .semibold,design: .monospaced))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .lineLimit(13)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.teal, .blue],
                        startPoint: .top,
                        endPoint: .bottom))
            
            
            
            
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
                    
                    Text ("Gotcha".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                    
        }
    
        }.navigationBarBackButtonHidden(true)
        

        
    }
    
    
    struct NextPlayerInfoView_Previews: PreviewProvider {
        static var previews: some View {
            NextPlayerInfoView()
        }
    }
}
