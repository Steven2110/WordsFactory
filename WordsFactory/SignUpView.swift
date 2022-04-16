//
//  SignUpView.swift
//  WordsFactory
//
//  Created by Steven Wijaya on 16.04.2022.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSecured: Bool = true
    var body: some View {
        VStack(spacing: 16) {
            Image("Cool Kids Standing")
            VStack(spacing: 8) {
                Text("Sign up")
                    .font(.custom("Rubik-Medium", size: 24))
                Text("Create your account")
                    .font(.custom("Rubik-Regular", size: 14))
                    .foregroundColor(Color(red: 0.471, green: 0.456, blue: 0.427))
            }
            
            // Input block and sign up button
            VStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(red: 0.746, green: 0.731, blue: 0.702), lineWidth: 1)
                    .frame(width: 343, height: 53)
                    .overlay(
                        TextField("Name", text: $name)
                            .frame(width: 311, height: 21)
                    )
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(red: 0.746, green: 0.731, blue: 0.702), lineWidth: 1)
                    .frame(width: 343, height: 53)
                    .overlay(
                        TextField("E-mail", text: $email)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .frame(width: 311, height: 21)
                    )
                ZStack(alignment: .trailing) {
                    if self.isSecured {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 0.746, green: 0.731, blue: 0.702), lineWidth: 1)
                            .frame(width: 343, height: 53)
                            .overlay(
                                SecureField("Password", text: $password)
                                    .frame(width: 278, height: 21)
                                    .padding(.leading, 16)
                                , alignment: .leading
                            )
                    } else {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 0.746, green: 0.731, blue: 0.702), lineWidth: 1)
                            .frame(width: 343, height: 53)
                            .overlay(
                                TextField("Password", text: $password)
                                    .frame(width: 278, height: 21)
                                    .padding(.leading, 16)
                                , alignment: .leading
                            )
                    }
                    Button {
                        self.isSecured.toggle()
                    } label: {
                        Image(systemName: self.isSecured ? "eye.slash" : "eye")
                            .accentColor(.gray)
                    }
                    .padding(.trailing, 16)
                }
                .padding(.bottom, 16)
                Button {
                    // Send name, email, password data to database and go to the main screen
                } label: {
                    Text("Sign up")
                        .font(.custom("Rubik-Medium", size: 16))
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 343, height: 56)
                                .foregroundColor(Color(red: 0.892, green: 0.338, blue: 0.163))
                        )
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .center)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
