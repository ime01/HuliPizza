//
//  HuliPizzaApp.swift
//  HuliPizza
//
//  Created by Elena for AP on 28/01/2024.
//

import SwiftUI

@main
struct HuliPizzaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu:MenuModel().menu)
        }
    }
}
