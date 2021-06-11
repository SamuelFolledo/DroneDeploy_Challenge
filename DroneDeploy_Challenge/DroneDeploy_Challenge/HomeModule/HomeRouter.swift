//
//  HomeRouter.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/10/21.
//

import SwiftUI

class HomeRouter {
    
    func makeHomeDetailView(presenter: HomePresenter) -> some View {
        return HomeDetailView(presenter: presenter)
    }
}

//MARK: Enums
extension HomeRouter {
    enum ViewType {
        case home, detail, auth
    }
}
