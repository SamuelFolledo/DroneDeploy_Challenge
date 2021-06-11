//
//  HomeDetailView.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/10/21.
//

import SwiftUI

struct HomeDetailView: View {
    
    @ObservedObject var presenter: HomePresenter
    
    var body: some View {
        EmptyView()
        .navigationBarTitle("Page 2", displayMode: .inline)
        .navigationBarItems(trailing: presenter.makeLogoutButton())
    }
}

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = HomePresenter(interactor: HomeInteractor())
        return NavigationView {
            HomeDetailView(presenter: presenter)
        }
    }
}
