//
//  ContentView.swift
//  iOS15-SwiftUI-JWTAuthentication
//
//  Created by TheGIZzz on 11/5/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        VStack {
            Form {
                HStack {
                    Spacer()
                    Image(systemName: loginVM.isAuthenticated ? "lock.fill" : "lock.open")
                }
                
                TextField("Username", text: $loginVM.username)
                SecureField("Password", text: $loginVM.password)
                
                HStack {
                    Spacer()
                    Button("Login") {
                        loginVM.login()
                    }
                    Button("Signout") {
                        
                    }
                    Spacer()
                }
            }.buttonStyle(PlainButtonStyle())
            
            VStack {
                
                Spacer()
                
                Button("Get Accounts") {
                
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .onAppear(perform: {

        })
        .navigationTitle("Login")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
