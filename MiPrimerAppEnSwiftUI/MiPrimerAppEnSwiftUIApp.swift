//
//  MiPrimerAppEnSwiftUIApp.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 07/09/23.
//

import SwiftUI

@main
struct MiPrimerAppEnSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let usersInteractor = UsersInteractor.interactor()
            let usersViewModel = UsersViewModel(usersInteractor: usersInteractor)
            UsersView(userViewModel: usersViewModel)
        }
    }
}
