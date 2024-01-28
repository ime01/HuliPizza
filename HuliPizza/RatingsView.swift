//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Elena for AP on 28/01/2024.
//

import SwiftUI

struct RatingsView: View {
    
    var rating : Int
    let maxRating : Int = 6
    
    var body: some View {
        HStack{
            
            ForEach(0...maxRating, id:\.self){ circle in
                
                Image( systemName: (circle <= rating) ? "fork.knife.circle.fill" : "circle")
                
            }
           
        }
    }
}

#Preview {
    RatingsView(rating:  4)
}
