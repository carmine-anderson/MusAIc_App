//
//  ContentView.swift
//  MusAIc
//
//  Created by Carmine Anderson on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var getStarted = false // State to trigger navigation
    @State private var login = false
    @State private var username: String = ""
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background Image - Fullscreen without clipping issues
                Image("backgroundImage2") // Ensure it matches Assets.xcassets
                    .resizable()
                    .ignoresSafeArea() // Extends beyond safe areas
                    .scaledToFill() // Ensures it fills the screen completely
                
                VStack(spacing: 20) {
                    Spacer()
                    Spacer()
                    // Welcome Text
                    Text("Welcome to MusAlc")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        
                    
                    // Subheading
                    Text("Don't know what key your music is in? Find out below!")
                        .font(.body)
                        .foregroundColor(.black) // Ensures contrast with the background
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                        .padding(.horizontal, 40) // Adds spacing without a box
                        .padding(.vertical, 10) // Adds vertical spacing for better balance
                    
                    Spacer()
                    
                    // Get Started Button
                    Button(action: {
                        getStarted = true // Set state to trigger navigation
                    }) {
                        Text("Get Started")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                            .frame(width: 200) // Adjust width for a rounded button
                            .background(Color.white.opacity(0.3)) // Slightly brighter button
                            .foregroundColor(.white)
                            .cornerRadius(25) // Rounded corners
                            .shadow(radius: 5) // Adds a soft shadow for a modern look
                    }
                    .padding(.bottom, 40) // Adds space to the button
                    
                    Button(action: {
                        login = true
                    }) {
                        Text("Have an account with us?")
                            .font(.body)
                            .foregroundColor(.black)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            }
            .navigationDestination(isPresented: $getStarted) {
                SignupView() // Navigates to SignupView.swift
            }
            .navigationDestination(isPresented: $login) {
                SigninView() // Navigates to SignupView.swift
            }
        }
    }
}
    
#Preview {
    ContentView()
}
