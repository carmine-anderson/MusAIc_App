//
//  MainView.swift
//  MusAIc
//
//  Created by Carmine Anderson on 2/3/25.
//

import SwiftUI
struct MainView: View {
    
    var body: some View {
        TabView {
            AudioInputView()
            .tabItem {
                Label("Detect", systemImage: "waveform")
            }
                    
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
            }
        }
        .tint(Color.white) // This makes the label and icon white
                .background(Color.black.ignoresSafeArea())
    }
}

struct AudioInputView: View {
        @State private var detectedKey: String = "Tap to Detect Key"
        
        var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.pink]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Text(detectedKey)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                    
                    Button(action: {
                        detectedKey = "C# Minor" // Simulate detection
                    }) {
                        Image(systemName: "waveform.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                    .padding(.top, 50)
                }
            }
        }
}
struct ProfileView: View {
    
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.pink]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("User Profile")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                    
                    Spacer()
                }
            }
            .navigationTitle("Profile")
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    Text("Profile")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                }
//            }
        }
    }
}
#Preview {
    MainView()
}

