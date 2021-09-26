//
//  SideMenuHeaderView.swift
//  podcast-area
//
//  Created by Akira Akimoto on 2021/9/26.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowSlider: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Image ("icon")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 64,  height: 64)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 16)
            
            Text("Asuka").font(.system(size: 24, weight: .semibold))
            Text("@asuka").font(.system(size: 14))
                .padding(.bottom, 24)
            
            HStack (spacing: 12){
                HStack (spacing: 4){
                    Text("1,254").bold()
                    Text("Following")
                }
                HStack (spacing: 4){
                    Text("607").bold()
                    Text("Followers")
                }
                Spacer()
            }
            
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowSlider: .constant(true))
    }
}
