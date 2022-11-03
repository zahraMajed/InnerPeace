//
//  NewHabitsView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 08/04/1444 AH.
//

import SwiftUI

struct NewHabitsView: View {
    //MARK: Variable
    @EnvironmentObject var routineSettingObj : RoutineSettings
    @State private var showNextScreen = false
    
    //MARK: Body
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Habits Test")
                .font(.custom("Helvetica", size: 34))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .frame(width: 353, height: 60, alignment: .leading)
                
                Text("Choose and prioirtize fun new habits for you!")
                    .font(.custom("Helvetica", size: 21))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(width: 323, height: 52, alignment: .leading)
                Spacer()
                //creating list
                List {
                    ForEach(routineSettingObj.newUserHabitsArray , id: \.self) { habit in
                        Text(habit)
                            .font(.custom("Helvetica", size: 21))
                            .fontWeight(.regular)
                            .padding(.bottom, 12)
                    }.onMove(perform: { indexSet, index in
                        self.routineSettingObj.newUserHabitsArray.move(fromOffsets: indexSet, toOffset: index)
                    }).onDelete(perform: delete)
                        .listRowSeparator(.hidden)
                }.frame(maxHeight: 400)
                    .listStyle(.plain)
                    .padding()
                    .navigationBarItems(trailing: EditButton())
                
                Button("Done") {
                    showNextScreen = true
                }
                .frame(width: 327, height: 41)
                .background(Color("PrimaryColorB"))
                .foregroundColor(.white)
                .cornerRadius(10)
                .fullScreenCover(isPresented: $showNextScreen) {
                    SettingRoutineView()
                }
                Spacer()
            }.onAppear{
               filterArray ()
            }
        }
    }
    
    //MARK: Functionsid
    func delete(at offsets: IndexSet) {
        routineSettingObj.newUserHabitsArray.remove(atOffsets: offsets)
    }
    
    func filterArray ()
    {
        for habit in routineSettingObj.HabitsArray
        {
            print("--- the Habit is : \(habit)")
            if !routineSettingObj.userHabitsArray.contains(habit) {
               //newHabitList.append(habit)
                print("--- the  newUserHabit is : \(habit)")
                routineSettingObj.newUserHabitsArray.append(habit)
            }
        }
        print(routineSettingObj.newUserHabitsArray)
    }
    
    
}
struct NewHabitsView_Previews: PreviewProvider {
    static var previews: some View {
        NewHabitsView()
            .environmentObject(RoutineSettings())
    }
}
