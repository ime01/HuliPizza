//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Elena for AP on 28/01/2024.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var orders:OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass:UserInterfaceSizeClass?
    
    var body: some View {

        VStack {
            
            if(vSizeClass ?? .regular) != .compact{
                ZStack(alignment: .bottomTrailing ){
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            }else{
                HStack(alignment:.bottom){
                    
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.heavy)
                    
                }
            }
            
            
            
        }.background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
