//
//  InnerPeaceApp.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 02/04/1444 AH.
//

import SwiftUI

@main
struct InnerPeaceApp: App {
    init(){
        UINavigationBar.appearance().tintColor = UIColor(named: "SecondaryColorGreyGreen")
    }
    var body: some Scene {
        WindowGroup {
            HabitsTestView1()
                .tint(Color("SecondaryColorGreyGreen"))
        }
    }
}
