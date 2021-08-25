//
//  ContentView.swift
//  TabViewUseTag
//
//  Created by Thongchai Subsaidee on 25/8/2564 BE.
//

import SwiftUI

enum TabItem {
    case bananas, apples, peaches, x
}

struct ContentView: View {
    
    @State var selectedItem = TabItem.bananas
    
    var body: some View {
        
        TabView(selection: $selectedItem) {
            
            Text("Bananas 🍌🍌")
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("🍌🍌")
                }
                .tag(TabItem.bananas)
            
            Text("Apples 🍏🍏")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("🍏🍏")
                }
                .tag(TabItem.apples)
            
            Text("Peaches 🍑🍑")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("🍑🍑")
                }
                .tag(TabItem.x)
            
        }
        .onChange(of: selectedItem, perform: { value in
            print("Selected: \(selectedItem)")
        })
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
