//
//  UsersInteractor.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 14/09/23.
//

import Foundation
import UIKit

struct UsersInteractor {
    var fetchUsers: () async -> [User]
    var callUser: (User) -> ()
    
    static func interactor() -> UsersInteractor {
        return UsersInteractor {
            try? await Task.sleep(until: .now + .seconds(2), clock: .continuous)
            return [User(name: "Tony", phone: "623523"),
                    User(name: "Joan", phone: "602837"),
                    User(name: "Alex", phone: "602747")]
        } callUser: { user in
            print("Llamando...")
            guard let url = URL(string: "tel: \(user.phone)") else {return}
            UIApplication.shared.open(url)
        }
    }
}
