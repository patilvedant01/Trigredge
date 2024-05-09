//
//  ContentView.swift
//  Trigredge
//
//  Created by Vedant Patil on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Food")
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Food")
                }
                .tag(1)
            
            Text("Orders")
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Orders")
                }
                .tag(2)
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(3)
        }
      }
}


#Preview {
    ContentView()
}
