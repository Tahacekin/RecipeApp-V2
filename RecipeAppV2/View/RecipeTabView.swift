//
//  TabView.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
            
        
           TabView {
            
            Text("Feautered Tab")
                .tabItem {
                    
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            
            ContentView()
                .tabItem {
                    
                    
                    Image(systemName: "list.bullet")
                    
                    Text("List")
                }
            
        }
        
        
        
        
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
