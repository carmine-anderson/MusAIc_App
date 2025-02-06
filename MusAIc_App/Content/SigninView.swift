//
//  SigninView.swift
//  MusAIc
//
//  Created by Carmine Anderson on 2/3/25.
//

import SwiftUI

struct SigninView: View {
    
    @State private var submit = false
    @State private var inputName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("backgroundImage2") // Ensure it matches Assets.xcassets
                    .resizable()
                    .ignoresSafeArea() // Extends beyond safe areas
                    .scaledToFill() // Ensures it fills the screen completely
            
            
                
                VStack (spacing: 10){
                    Spacer()
                    Text("Sign into your account:")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                    
                    
                    // Username input
                    TextField("Name", text: $inputName)
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
                        submit = true // Sets the state to trigger nav
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
            .navigationDestination(isPresented: $submit) {
                MainView()
            }
            
        }
    }
}

#Preview {
    SigninView()
}
