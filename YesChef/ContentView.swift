//
//  ContentView.swift
//  YesChef
//
//  Created by Breshears, Rob - CTC on 9/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var selctedTab = 0
    
    var body: some View {
        TabView (selection: $selctedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                //.tag(0)
                .toolbarBackground(Color.green, for: .tabBar)
            
            IngredientsView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Ingedients")
                    
                }
                .tag(1)
                
            
            InstructionsView()
                .tabItem {
                    Image(systemName: "frying.pan.fill")
                    Text("Instructions")
                       
                }
                .tag(2)
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
