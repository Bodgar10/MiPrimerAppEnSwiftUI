//
//  User.swift
//  MiPrimerAppEnSwiftUI
//
//  Created by Bodgar Espinosa Miranda on 14/09/23.
//

import Foundation

struct User: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let phone: String
}
