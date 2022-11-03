//
//  RoutineClass.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 09/04/1444 AH.
//

import Foundation

class RoutineSettings: ObservableObject , Identifiable {
    var id = UUID()

    var habitsDic : [String:Int] = ["Exercises": 0,
                                     "Meditation": 0,
                                     "Painting":0,
                                     "Music":0,
                                     "Journaling":0,
                                     "Naturalise":0]
    
    @Published var userHabitsArray = [String]()
    @Published var newUserHabitsArray : [String] = []
    @Published var userRoutine : [String] = []
    @Published var HabitsArray = ["Exercises", "Meditation", "Painting", "Music", "Journaling", "Naturalise"]
}
