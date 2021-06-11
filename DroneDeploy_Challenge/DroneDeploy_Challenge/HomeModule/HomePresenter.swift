//
//  HomePresenter.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/10/21.
//

import SwiftUI
import Combine

class HomePresenter: ObservableObject {
    
    private let interactor: HomeInteractor
    private let router = HomeRouter()
    @Published var isAuthenticating = true
    
    init(interactor: HomeInteractor) {
        self.interactor = interactor
    }
    
    //MARK: Methods
    func makeGoToDetailButton() -> some View {
        Text("Go to page 2")
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
    
    func linkBuilder<Content: View>(
        @ViewBuilder content: () -> Content
      ) -> some View {
        NavigationLink(
          destination: router.makeHomeDetailView(presenter: self)) {
              content()
        }
    }
    
    func makeLogoutButton() -> some View {
        Button { self.logout() } label: {
            Text("Logout")
        }
    }
    
    private func logout() {
        print("Logout tapped")
        //logout... go to home page
        isAuthenticating.toggle()
    }
}
