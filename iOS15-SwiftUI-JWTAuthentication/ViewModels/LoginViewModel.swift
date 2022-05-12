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
    
    func login() {
        
        Webservice().login(username: username, password: password) { (result) in
            switch result {
            case .success(let token):
                print(token)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
