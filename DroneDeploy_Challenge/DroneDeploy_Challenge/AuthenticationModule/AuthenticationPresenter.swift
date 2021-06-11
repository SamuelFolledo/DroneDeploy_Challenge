//
//  AuthenticationPresenter.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/7/21.
//

import SwiftUI
import Combine

class AuthenticationPresenter: ObservableObject {
    @Published var isAuthenticating = true
    private let interactor: AuthenticationInteractor
    private let router = AuthenticationRouter()
    weak var navigationController: UINavigationController?
    
    init(interactor: AuthenticationInteractor) {
        self.interactor = interactor
    }
    
    func makeLoginButton() -> some View {
        Button { self.login() } label: {
            Text("Login")
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width / 2, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .strokeBorder(Color.black, lineWidth: 1)
                )
        }
    }
    
    private func login() {
        print("Login tapped")
        //login... go home
        isAuthenticating.toggle()
    }
}
