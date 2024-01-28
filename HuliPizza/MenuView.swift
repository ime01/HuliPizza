//
//  MenuView.swift
//  HuliPizza
//
//  Created by Elena for AP on 28/01/2024.
//

import SwiftUI

struct MenuView: View {
    
    var menu:[MenuItem]
    @Binding var selectedItem:MenuItem
    
    var body: some View {
        
        List(MenuCategory.allCases, id: \.self){ category in
           
            Section {
    
                ForEach(menu.filter({$0.category == category})){ item in
                    
                    MenuRowView(item: item)
                        .onTapGesture {
                            selectedItem = item
                        }
                }
                
            }header: {
                Text(category.rawValue)
            }
            
            
            
        }
        
    }
}

#Preview {
    MenuView(menu: MenuModel().menu, selectedItem: .constant(testMenuItem)) 
}
