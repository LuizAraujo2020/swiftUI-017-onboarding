//
//  ContentView.swift
//  swiftUI-017-onboarding
//
//  Created by Luiz Carlos da Silva Araujo on 14/10/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("_shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("You're in the main App now!")
                    .padding()
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)

        })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
