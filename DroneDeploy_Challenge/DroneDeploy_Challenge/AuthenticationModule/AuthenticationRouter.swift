//
//  AuthenticationRouter.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/10/21.
//

import SwiftUI

class AuthenticationRouter {
    
    //MARK: Methods
    
    func makeHomeView() -> some View {
        let presenter = HomePresenter(interactor: HomeInteractor())
        return HomeView(presenter: presenter)
    }
}
