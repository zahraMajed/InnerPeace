//
//  TestClasses.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 07/04/1444 AH.
//

import Foundation

class AnxietySettings: ObservableObject {
    @Published var score = 0
    let questionDic: [Int: String] = [0:"Not at all sure",
                                      1:"Several days",
                                      2:"Over half the days",
                                      3:"Nearly every day"]
}

class DepressionSettings: ObservableObject {
    @Published var score = 0
}
