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
              
                VStack(alignment: .leading) {
                    
                    Text("All Recipes")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                    
                    ScrollView {
                        
                        LazyVStack(alignment: .leading) {
                            
                            ForEach(recipeView.recipes) { r in
                                
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
                                        .foregroundColor(.black)
                                        
                                        }
                                    })
                                
                                
                               
                               
                                
                                
                            }
                            .navigationBarHidden(true)
                        }
                        
                    }

                    
                }.padding()
                            
            }
            
        
        
        
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipeModel())
    }
}
