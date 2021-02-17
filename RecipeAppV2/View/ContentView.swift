//
//  ContentView.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import SwiftUI

struct ContentView: View {
    
@ObservedObject var recipeView = RecipeModel()
    
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
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
