//
//  SideMenuViewModel.swift
//  podcast-area
//
//  Created by Akira Akimoto on 2021/9/26.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case hot
    case track
    case history
    
    var title: String {
        switch self {
        case .hot: return "熱門節目"
        case .track: return "正在追蹤"
        case .history: return "歷史造訪"
        }
    }
    
    var imageName: String {
        switch self {
        case .hot: return "flame"
        case .track: return "heart.fill"
        case .history: return "clock"
        }
    }
}
