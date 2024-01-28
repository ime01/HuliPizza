//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Elena for AP on 28/01/2024.
//

import SwiftUI

struct MenuRowView: View {
    
    //This is where the parameter to be passed in is decalred
    var item: MenuItem
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 15){
           
            
            if let image = UIImage(named: "\(item.id)_sm"){
                Image(uiImage: image)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            }else{
                Image("surfboard_sm")
            }
            
            VStack (alignment: .leading){
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.price, format: .currency(code: "USD"))
                }
                RatingsView(rating: item.rating)
            }
            
            Spacer()
        }
    }
}

#Preview {
    MenuRowView(item: testMenuItem)
}
