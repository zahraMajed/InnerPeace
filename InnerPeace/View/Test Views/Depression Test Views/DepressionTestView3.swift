//
//  DepressionTextView3.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 08/04/1444 AH.
//

import SwiftUI

struct DepressionTestView3: View {
    var body: some View {
        DepressionTestView2(testQuestion: "Trouble falling or staying asleep, or sleeping too much", progressValue: 120, testNum: "3/9", secondViewToNav: DepressionTestView2(testQuestion: "Feeling tired or having little energy", progressValue: 160, testNum: "4/9", secondViewToNav: DepressionTestView2(testQuestion: "Poor appetite or overeating", progressValue: 200, testNum: "5/9", secondViewToNav: DepressionTestView2(testQuestion: "Feeling bad about yourself - or that you are a failure or have let yourself or your family down", progressValue: 240, testNum: "6/9", secondViewToNav: DepressionTestView2(testQuestion: "Trouble concentrating on things, such as reading the newspaper or watching television", progressValue: 280, testNum: "7/9", secondViewToNav: DepressionTestView2(testQuestion: "Moving or speaking so slowly that other people could have noticed or the opposite - being so fidgety or restless that you have been moving around a lot more than usual", progressValue: 320, testNum: "8/9", secondViewToNav: DepressionTestView2(testQuestion: "Thoughts that you would be better off dead, or of hurting yourself", progressValue: 340, testNum: "9/9", secondViewToNav: TestBreakView(subTitle: "Exercise can help manage depression!", btnText: "Start Building Habits", secondViewToNav: NewHabitsView()))))))))
    }
}

struct DepressionTextView3_Previews: PreviewProvider {
    static var previews: some View {
        DepressionTestView3()
    }
}
