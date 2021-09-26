//
//  ContentView.swift
//  podcast-area
//
//  Created by Akira Akimoto on 2021/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    @State private var isShowSlider = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowSlider {
                    SliderMenuView(isShowSlider: $isShowSlider)
                }
                
                MainTabView(selectedIndex:$selectedIndex)
                    .cornerRadius(isShowSlider ? 20 : 10)
                    .offset(x: isShowSlider ? 300 : 0, y: isShowSlider ? 44 : 0)
                    .scaleEffect(isShowSlider ? 0.8 : 1)
                    .navigationBarTitle(tabTitle(forIndex: selectedIndex))
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowSlider.toggle()
                        }
                    }, label: {
                        Image("icon")
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 32, height: 32)
                            .cornerRadius(16)
                        
                    }))
                    .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
