//
//  HomeView.swift
//  podcast-area
//
//  Created by Akira Akimoto on 2021/9/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                VStack {
                    ForEach(0..<10) { _ in
                        HStack{
                            Image("example3")
                                .resizable()
                                .scaledToFill()
                                .frame(width:110)
                                .padding(10)
                            
                            Image("example")
                                .resizable()
                                .scaledToFill()
                                .frame(width:110)
                                .padding(10)
                            
                            Image("example2")
                                .resizable()
                                .scaledToFill()
                                .frame(width:110)
                                .padding(10)
                            
                            
                        }
                    }.padding(.horizontal)
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
