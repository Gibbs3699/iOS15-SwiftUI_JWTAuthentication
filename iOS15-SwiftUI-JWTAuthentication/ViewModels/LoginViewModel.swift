//
//  LoginViewModel.swift
//  iOS15-SwiftUI-JWTAuthentication
//
//  Created by TheGIZzz on 12/5/2565 BE.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    var username: String = ""
    var password: String = ""
    @Published var isAuthenticated: Bool = false
    
    func login() {
        
        let defaults = UserDefaults.standard
        
        Webservice().login(username: username, password: password) { (result) in
            switch result {
            case .success(let token):
                defaults.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                    self.isAuthenticated = true
                }
                print(token)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
