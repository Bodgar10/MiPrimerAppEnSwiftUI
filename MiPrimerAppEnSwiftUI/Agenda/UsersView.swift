//
//  UsersView.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 14/09/23.
//

import SwiftUI
import Combine

struct UsersView : View {
    @ObservedObject var userViewModel: UsersViewModel
    
    var body: some View {
        NavigationView {
            if case let .loaded(loadedState) = userViewModel.state {
                loadedView(state: loadedState)
            } else {
                loadingView()
            }
        }.onAppear {
            userViewModel.send(.viewAppeared)
        }
    }
    
    private func loadingView() -> some View {
        ProgressView()
    }
    
    private func loadedView(state: UsersViewModel.LoadedState) -> some View {
        List {
            ForEach(state.users) { user in
                Text(user.name)
                    .onTapGesture {
                        userViewModel.send(.userTapped(user))
                }
            }
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        let userInteractor = UsersInteractor.interactor()
        UsersView(userViewModel: UsersViewModel(usersInteractor: userInteractor))
    }
}
