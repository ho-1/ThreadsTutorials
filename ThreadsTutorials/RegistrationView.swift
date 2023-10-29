//
//  RegistrationView.swift
//  ThreadsTutorials
//
//  Created by byungho on 10/29/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads_logo")
                .resizable()
                .frame(width: 120, height: 120)
                .padding()
            
            TextField("Enter your email", text: $email)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .modifier(ThreadsTextFieldModifier())
            
            SecureField("Enter your password", text: $password)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your full name", text: $fullName)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your username", text: $userName)
                .modifier(ThreadsTextFieldModifier())
            
            Button {
                
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                Text("Resitration View")
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
