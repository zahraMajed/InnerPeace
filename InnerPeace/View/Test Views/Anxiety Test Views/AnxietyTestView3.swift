//
//  AnxietyTestView3.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 08/04/1444 AH.
//

import SwiftUI

struct AnxietyTestView3: View {
    var body: some View {
        AnxietyTestView2(testQuestion: "Worrying too much about different things ?", progressValue: 158, testNum: "3/7", secondViewToNav: AnxietyTestView2(testQuestion: "Trouble relaxing ?", progressValue: 210, testNum: "4/7", secondViewToNav: AnxietyTestView2(testQuestion: "Being so restless that it's hard to sit still ?", progressValue: 260, testNum: "5/7", secondViewToNav: AnxietyTestView2(testQuestion: "Becoming easily annoyed or Irritable ?", progressValue: 315, testNum: "6/7", secondViewToNav: AnxietyTestView2(testQuestion: "Becoming easily annoyed or Irritable ?", progressValue: 370, testNum: "7/7", secondViewToNav: TestReportView())))))
    }
}

struct AnxietyTestView3_Previews: PreviewProvider {
    static var previews: some View {
        AnxietyTestView3()
    }
}
