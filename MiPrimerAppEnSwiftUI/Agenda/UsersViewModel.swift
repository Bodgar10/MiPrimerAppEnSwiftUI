//
//  UsersViewModel.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 14/09/23.
//

import Foundation
import UIKit

/// final:  Nadie puede crear una subclase de esta clase
class UsersViewModel: ObservableObject {
    
    enum Event {
        case viewAppeared
        case userTapped(User)
    }
    
    enum State: Equatable {
        case loading
        case loaded(LoadedState)
    }
    
    struct LoadedState: Equatable {
        let users: [User]
    }
    
    // Como se comunica el viewmodel con la vista
    @Published var state: State
    
    private let usersInteractor: UsersInteractor
    
    init(state: State = .loading, usersInteractor: UsersInteractor) {
        self.state = state
        self.usersInteractor = usersInteractor
    }
    
    //Vista se comunica con el viewmodel
    public func send(_ event: Event) {
        switch event {
        case .viewAppeared:
            loadUsers()
        case .userTapped(let user):
            userTapped(user)
        }
    }
}

private extension UsersViewModel {
    func loadUsers() {
        Task { @MainActor in
            let users = await usersInteractor.fetchUsers()
            state = .loaded(LoadedState(users: users))
        }
    }
    
    func userTapped(_ user: User) {
        usersInteractor.callUser(user)
    }
}
