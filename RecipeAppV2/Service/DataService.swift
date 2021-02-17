//
//  DataService.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 17.02.2021.
//

import Foundation



class DataService {
    
    
    
   static func getLocaldata() -> [Recipe] {
        
        let pathString = Bundle.main.path(forResource: "recipe", ofType: "json")
        
        guard pathString != nil else {
          
            return [Recipe]()
        
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
       
        do {
            
            let data = try Data(contentsOf: url)
        
            
            
            
            do {
            let decoder = JSONDecoder()
            
           
                
                
            let recipeData = try decoder.decode([Recipe].self, from: data)
            
                for r in recipeData {
                    
                    r.id = UUID()
                    
                    
                }
            
            return recipeData
            }
            catch {
                
                
                print(error)
                
                
            }
        
        
        
        
        
        
        }
        catch {
            
            print(error)
            
        }
        
        
        
       return [Recipe]()
    }
    
    
    
    
}
