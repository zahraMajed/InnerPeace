//
//  DepressionTestView1.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 08/04/1444 AH.
//

import SwiftUI

struct DepressionTestView1: View {
    //MARK: Variable
    @StateObject var depressionSettingObj = DepressionSettings()
    
    //MARK: Body
    var body: some View {
        NavigationView {
            VStack {
            Spacer()
                Text("Depression Test")
                .font(.custom("Helvetica", size: 34))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .frame(width: 353, height: 60, alignment: .leading)
 
 //Questions
                Text("Little interest or pleasure in doing things")
                .font(.custom("Helvetica", size: 22))
                .fontWeight(.bold)
                .frame(width: 346, alignment: .leading)
                .frame(maxWidth: .infinity)
                .offset(x:0,y: 80)
            
// Answers
                VStack(spacing: 20){
                ForEach(depressionSettingObj.answersDic.sorted(by: >), id: \.key) {
                    key, value in
                    NavigationLink {
                        DepressionTestView2(testQuestion: "Feeling down, depressed, or hopeless", progressValue: 80, testNum: "2/9", secondViewToNav: DepressionTestView3())
                    } label: {
                        Text("\(value)")
                            .font(.custom("Helvetica", size: 21))
                            .foregroundColor(Color.black)
                            .frame(width: 346.0, height: 48.0)
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        depressionSettingObj.score += key
                        print(depressionSettingObj.score)
                    })
                }//foreach
            }.padding().offset(x: 0, y:130)

 //ProgressPar
                ZStack {
                    Text("1/7")
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .frame(width: 361, height: 52.0, alignment: .leading)
                        .offset(x:2,y: 50)
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 250))
                        path.addLine(to: CGPoint(x: 370, y: 250))
                    }.stroke(Color("Gray"), lineWidth: 4)
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 250))
                        path.addLine(to: CGPoint(x: 40, y: 250))
                    }.stroke( Color("SecondaryColorGreyGreen"), lineWidth: 4)
                }
            }//genral VStack
        }.environmentObject(depressionSettingObj)
    }
}

struct DepressionTestView1_Previews: PreviewProvider {
    static var previews: some View {
        DepressionTestView1()
    }
}
