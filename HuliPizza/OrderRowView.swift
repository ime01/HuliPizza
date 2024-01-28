//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Elena for AP on 28/01/2024.
//

import SwiftUI

struct OrderRowView: View {
    
    //This is where the parameter to be passed in is decalred
    @Binding var order :OrderItem
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(order.item.name)
                Text("_ " + order.preferredCrust.rawValue)
                if order.extraIngredients{Image(systemName: "2.circle")}
                Spacer()
                Text(order.name)
            }
            
            HStack(alignment: .firstTextBaseline) {
                
                Text(order.quantity, format: .number)
                Text(order.item.price, format: .currency(code: "USD"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order : .constant(testOrderItem))
}
