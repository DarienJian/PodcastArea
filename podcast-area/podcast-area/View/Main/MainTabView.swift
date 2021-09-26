//
//  MainTabView.swift
//  podcast-area
//
//  Created by Akira Akimoto on 2021/9/25.
//

import SwiftUI

struct MainTabView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        TabView(selection: $selectedIndex){
            HomeView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            WriteView()
                .onTapGesture {
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "pencil")
                }.tag(2)
        }
    }
}

func tabTitle(forIndex index: Int) -> String {
    switch index {
    case 0: return "首頁"
    case 1: return "搜尋"
    case 2: return "撰寫"
    default: return ""
    }
}
