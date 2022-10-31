//
//  SplashView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 02/04/1444 AH.
//

import SwiftUI


struct SplashView: View {
    
    //MARK: VARIABLS
    @State private var isSplashActive = true
    
    //MARK: BODY
    var body: some View {
        if isSplashActive {
            VStack{
                LottieView(JSONFileName: "Logo", isLoop: false).frame(width: 100, height: 100, alignment: .center)
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.4) {
                    self.isSplashActive = false
                }
            }
        }else {
            // the condition here should be passed the tet or not (variable like app storage)
            /* After 2 second eithr will go to
             1- Onboarding (if he never see the onbording, his first time)
                or to
            2- test intro (if he have not done the test and he saw the onboardign)
                or to (test intro decide if user should see the onboarding or not) */
            TestIntroView()
            /* 3- routine page (if he passd the test)
             */
            
            /*
             isTestDone: Appstorage that set in either calculating result view or fun new habitis
             if isTestDone {
                //routine page
            } else {
                //test intro , or where he stpped if he start the test
             TestIntroView()
             there should be a binding varible "testStage" i can know in which view the use is from it 
            }*/
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
