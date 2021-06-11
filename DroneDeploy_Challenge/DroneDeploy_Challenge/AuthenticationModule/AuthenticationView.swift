//
//  AuthenticationView.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/10/21.
//

import SwiftUI

struct AuthenticationView: View {
    
    @ObservedObject var presenter: AuthenticationPresenter
    
    var body: some View {
        VStack {
            presenter.makeLoginButton()
        }
        .navigationBarTitle("Login Screen", displayMode: .inline)
        .navigationBarItems(trailing: EmptyView())
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = AuthenticationPresenter(interactor: AuthenticationInteractor())
        return NavigationView {
            AuthenticationView(presenter: presenter)
        }
    }
}
