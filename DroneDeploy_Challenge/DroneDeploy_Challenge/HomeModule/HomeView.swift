//
//  HomeView.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/10/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var presenter: HomePresenter
    
    var body: some View {
        
        VStack {
            presenter.linkBuilder {
                presenter.makeGoToDetailButton()
            }
        }
        
        .navigationBarTitle("Page 1", displayMode: .inline)
        .navigationBarItems(trailing: presenter.makeLogoutButton())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = HomePresenter(interactor: HomeInteractor())
        return NavigationView {
            HomeView(presenter: presenter)
        }
    }
}
