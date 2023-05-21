//
//  AuthentificationView.swift
//  Hackathon Clothes Trading
//
//  Created by Justin Cho on 5/20/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()

            SecureField("Password", text: $password)
                .padding()

            Button("Sign Up") {
                signUp()
            }
            .padding()
        }
        .padding()
    }

    func signUp() {
        guard email.hasSuffix("@ucdavis.edu") else {
            print("Please enter a UC Davis email.")
            return
        }
        
        // Here, send the email and password to your backend server
        print("Sign up with email: \(email), password: \(password)")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct AuthenticationView: View {
    @EnvironmentObject var userAuthentication: UserAuthentication
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            // Email input
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .border(Color.gray, width: 0.5)
                .padding()

            // Password input
            SecureField("Password", text: $password)
                .border(Color.gray, width: 0.5)
                .padding()

            // Login button
            Button(action: {
                // Simulate successful login
                // Replace this with your actual login code
                if email.hasSuffix("@ucdavis.edu") {
                    userAuthentication.isAuthenticated = true
                }
            }) {
                Text("Log In")
            }
            .padding()
        }
    }
}

