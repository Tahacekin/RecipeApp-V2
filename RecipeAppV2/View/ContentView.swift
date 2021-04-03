//
//  ContentView.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import SwiftUI

struct ContentView: View {
    
@EnvironmentObject var recipeView:RecipeModel
    
    var body: some View {
     
        
        NavigationView {
            List(recipeView.recipes) { r in
                
                NavigationLink(
                    destination: DetailView(recipe: r ),
                    label: {
                    HStack{
                       
                    Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 50, alignment: .center)
                     .clipped()
                            
                    Text(r.name)
                        
                        }
                    })
                
                
               
               
                
                
            }
            .navigationBarTitle("All Recipes")
        }
        
        
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
