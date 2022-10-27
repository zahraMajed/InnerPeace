//
//  OnboardingScreensView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 02/04/1444 AH.
//

import SwiftUI

struct OnboardingScreensView: View {
    
    //MARK: Variable
    @Binding var shouldShowOnboarding: Bool
    
    //MARK: Body
    var body: some View {
        TabView {
            OnboardingViewT(
                imageName: "OnBording1",
                title: "Blessed you’re here",
                subtitle: "We help you find a best version of yourself, healthier, happier life!",
                showDismissBtn: false, shouldShowOnboarding: $shouldShowOnboarding
                //,shouldShowOnboarding: $shouldShowOnboarding
            ).tag(0)
            
            OnboardingViewT(
                imageName: "OnBording2",
                title: "Start small, Go big!",
                subtitle: "We help you deal with depression and anxiety by building a flexible wellness routine.",
                showDismissBtn: true
                ,shouldShowOnboarding: $shouldShowOnboarding
            ).tag(1)
            
        }.ignoresSafeArea()
            .tabViewStyle(PageTabViewStyle()).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

    }
}

struct OnboardingScreensView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreensView(shouldShowOnboarding: .constant(true))
    }
}
