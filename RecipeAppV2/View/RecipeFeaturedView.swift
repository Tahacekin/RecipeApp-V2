//
//  RecipeFeaturedView.swift
//  RecipeAppV2
//
//  Created by Taha Çekin on 3.04.2021.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Featured Recipes")
                .font(.title)
                .fontWeight(.bold)
            
            GeometryReader { geo in
                
                TabView {
                    
                    ForEach(0..<model.recipes.count) { index in
                        
                        if model.recipes[index].featured == true {
                           
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color.white)
                                
                                
                                VStack(spacing: 0) {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .scaledToFill()
                                    Text(model.recipes[index].name)
                                        .foregroundColor(Color.black)
                                        .font(.headline)
                                    
                                }
                                
                            }.frame(width: geo.size.width-50, height: geo.size.height-200)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                            
                        }
                        
                    }
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            VStack {
                Text("Prep time :")
                    .font(.headline)
                Text("1hr")
                Text("Highlights")
                    .font(.headline)
                Text("Healty, Hearty")
            }
        }.padding(.leading)
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
