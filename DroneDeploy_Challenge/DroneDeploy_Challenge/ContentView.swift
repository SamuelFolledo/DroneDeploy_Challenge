//
//  ContentView.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/7/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var presenter = AuthenticationPresenter(interactor: AuthenticationInteractor())
    @ObservedObject var homePresenter = HomePresenter(interactor: HomeInteractor())
    
    var body: some View {
        NavigationView {
            if presenter.isAuthenticating == false || homePresenter.isAuthenticating == false {
                HomeView(presenter: homePresenter)
            } else {
                AuthenticationView(presenter: presenter)
            }
        }
        .onChange(of: presenter.isAuthenticating) { isAuthenticating in
            homePresenter.isAuthenticating = isAuthenticating
        }
        .onChange(of: homePresenter.isAuthenticating) { isAuthenticating in
            presenter.isAuthenticating = isAuthenticating
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
