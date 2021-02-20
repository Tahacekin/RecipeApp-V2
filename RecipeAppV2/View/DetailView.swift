//
//  DetailView.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import SwiftUI

struct DetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        
        
        
         ScrollView {
             
             VStack {
                 
                 // MARK: Recipe Image
                 Image(recipe.image)
                     .resizable()
                     .padding(.bottom)
                     .scaledToFit()
                     
                 
                   
                 
                 
 VStack(alignment: .leading) {
     
         //MARK: Recipe Text
     Text("Ingrediants")
         .font(.headline)
         .padding(.vertical)
     
 ForEach(recipe.ingredients) { item in
                     
            Text("• " + item.name)
                     
                     
     }
                 
                 }
                     
                 Divider()
                 
 VStack(alignment: .leading) {
                     
                     Text("Directions")
                         .font(.headline)
                         .padding([.top, .leading])
                     
 ForEach(0..<recipe.directions.count, id: \.self) { index in
                         
     Text(String(index+1) + ". " + recipe.directions[index])
         .padding(.vertical)
         
                         
                         
 }
                     
                     
                     
                     
 }
 .padding(.horizontal)
             
             
             
             
             
             
             
             }
                 
                 
                 
                 
                 
             }
         .navigationBarTitle(Text(recipe.name))
    
    
    
    
    
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        DetailView(recipe: model.recipes[0])
    }
}
