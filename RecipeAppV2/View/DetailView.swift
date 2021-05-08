//
//  DetailView.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import SwiftUI

struct DetailView: View {
    
    var recipe:Recipe
    @State var selecteServingsize = 2
    
    var body: some View {
    
         ScrollView {
             
            VStack(alignment: .leading) {
                 
                 // MARK: Recipe Image
                 Image(recipe.image)
                     .resizable()
                     .padding(.bottom)
                     .scaledToFit()
                     
                 
                VStack() {
                   
                    Text("Select Serving Size")
                    Picker("", selection: $selecteServingsize) {
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                    }.pickerStyle(SegmentedPickerStyle())
                    .frame(width: 180)
                }.padding()
                 
                 
 VStack(alignment: .leading) {
     
         //MARK: Recipe Text
     Text("Ingrediants")
         .font(.headline)
        .padding([.top, .leading, .bottom])
     
 ForEach(recipe.ingredients) { item in
                     
    Text("• " + RecipeModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: selecteServingsize) + " " + item.name)
                     
                     
 }
                 
 }.padding()
                     
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
