//
//  TestBreakViewT.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 05/04/1444 AH.
//

import SwiftUI

struct TestBreakView: View {
    
    var subTitle: String
    var btnText: String
    
    var body: some View {
        VStack {
            Spacer()
            LottieView(JSONFileName: "Logo").frame(width: 390, height: 238, alignment: .center)
            //Title and Subtitle
            Spacer()
            VStack (alignment: .center, spacing: 20) {
                Text("Do you know ?")
                    .font(.custom("Helvetica", size: 25))
                    .bold()
                Text(subTitle)
                    .fontWeight(.light)
                    .font(.custom("Helvetica", size: 18))
                    .frame(width: 335, height: 44, alignment: .center)
            }
            
            //Button
            Spacer()
            Button(btnText) {
                
            }
            .frame(width: 327, height: 41)
            .background(Color("PrimaryColorB"))
            .foregroundColor(.white)
            .cornerRadius(10)
            Spacer()
        }
    }
}

struct TestBreakViewT_Previews: PreviewProvider {
    static var previews: some View {
        TestBreakView(subTitle: "To help you build new habits in a wellness routine! Here is our journey", btnText: "Start Depression test" )
    }
}
