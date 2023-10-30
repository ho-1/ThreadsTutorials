//
//  LoginViewModel.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/30/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
