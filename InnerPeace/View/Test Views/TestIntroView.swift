//
//  TestIntroView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 02/04/1444 AH.
//

import SwiftUI

struct TestIntroView: View {
    
    //MARK: Variable
    //@AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    //MARK: Body
    var body: some View {
        Text("Hello, test Homepage is here!")
            //.fullScreenCover(isPresented: $shouldShowOnboarding) {
            //OnboardingScreenView(shouldShowOnboarding: $shouldShowOnboarding)
        //}
    }
}

struct TestIntroView_Previews: PreviewProvider {
    static var previews: some View {
        TestIntroView()
    }
}
