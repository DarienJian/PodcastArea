//
//  SliderMenuView.swift
//  podcast-area
//
//  Created by Akira Akimoto on 2021/9/26.
//

import SwiftUI

struct SliderMenuView: View {
    @Binding var isShowSlider: Bool
    var body: some View {
        ZStack{
//            Color(literal)
            LinearGradient(gradient: Gradient(colors: [Color(red: 74 / 255, green: 159 / 255, blue: 153 / 255), Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowSlider: $isShowSlider)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        }
                    )
                }
                Spacer()
            }
        }
        
    }
}

struct SliderMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SliderMenuView(isShowSlider: .constant(true))
    }
}
