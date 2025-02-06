//
//  SignupView.swift
//  MusAIc
//
//  Created by Carmine Anderson on 2/3/25.
//

import SwiftUI

struct SignupView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var name: String = ""
    @State private var signup = false
    
    
    var body: some View {
        ZStack {
            Image("backgroundImage2") // Ensure it matches Assets.xcassets
                .resizable()
                .ignoresSafeArea() // Extends beyond safe areas
                .scaledToFill() // Ensures it fills the screen completely
            
            VStack (spacing: 10){
                Spacer()
                Text("Sign up for MusAIc!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 40)
               
                
                // Username input
                TextField("Name", text: $name)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .autocorrectionDisabled(true)
                
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .autocorrectionDisabled(true)
                
                SecureField("Password", text: $password)
                    .padding()
                    . frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .autocorrectionDisabled(true)
                
                
                
                Button(action: {
                    // print("login button tapped")
                    signup = true // Sets the state to trigger nav
                }) {
                    Text("Login")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 200)
                        .background(Color.white.opacity(0.3))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .shadow(radius: 5)
                
                }
                .padding(.top, 10)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.opacity(0.1)) // Light background for styling
            .ignoresSafeArea()
        }
        .navigationDestination(isPresented: $signup) {
            MainView()
        }
    }
}

#Preview {
    SignupView()
}
