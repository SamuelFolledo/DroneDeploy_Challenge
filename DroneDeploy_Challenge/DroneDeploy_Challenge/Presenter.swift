//
//  Presenter.swift
//  DroneDeploy_Challenge
//
//  Created by Samuel Folledo on 6/7/21.
//

import SwiftUI
import Combine

class Presenter: ObservableObject {
  private let interactor: Interactor

  init(interactor: Interactor) {
    self.interactor = interactor
  }
}
