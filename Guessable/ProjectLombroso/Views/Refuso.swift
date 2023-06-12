//
//  Refuso.swift
//  ProjectLombroso
//
//  Created by Kiar on 01/11/22.
//

import SwiftUI

struct Refuso: View {
    
    var body: some View {
       
        NavigationStack{
        
        ZStack{
            Color.red
                       
            VStack{
               
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

                
            }
           
        }.ignoresSafeArea(.all)
        }
        
      
        
    }
}

struct Refuso_Previews: PreviewProvider {
    static var previews: some View {
        Refuso()
    }
}
