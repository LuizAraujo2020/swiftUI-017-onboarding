//
//  Onboarding.swift
//  swiftUI-017-onboarding
//
//  Created by Luiz Carlos da Silva Araujo on 14/10/21.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView(title: "Push Notifications", subtitle: "Enable natofications to stay up to date with our App.", imageName: "bell", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
            
            PageView(title: "Bookmark", subtitle: "Save your favorite content.", imageName: "bookmark", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
            
            PageView(title: "Flights", subtitle: "Book flights to the places you want to go.", imageName: "airplane", showDismissButton: false, shouldShowOnboarding: $shouldShowOnboarding)
            
            PageView(title: "Home", subtitle: "Go home wherever you might be!", imageName: "house", showDismissButton: true, shouldShowOnboarding: $shouldShowOnboarding)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

// Generate Views
struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32.0))
                .multilineTextAlignment(.center)
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24.0))
                .foregroundColor(Color(.secondaryLabel))
                .multilineTextAlignment(.center)
                .padding()
            if showDismissButton {
                Button {
                    shouldShowOnboarding.toggle()
                } label: {
                    Text("Get started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color.green)
                        .cornerRadius(6)
                }

            }
        }
    }
}
