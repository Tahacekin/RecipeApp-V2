//
//  RecipeModel.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import Foundation



class RecipeModel:ObservableObject {
    
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        
        self.recipes = DataService.getLocaldata()
        
        
    }
    
    static func getPortion(ingredient: Ingredients, recipeServings: Int, targetServings: Int) -> String {
        
        // Going to calculate
        
        return String(targetServings)
    }
    
}
