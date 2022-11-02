//
//  SettingRoutineView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 06/04/1444 AH.
//

import SwiftUI

struct SettingRoutineView: View {
    @State private var hasTime1Elapsed = false
    @State private var hasTime2Elapsed = false
    @State private var hasTime3Elapsed = false
    @State private var hasTime4Elapsed = false
    @State private var isSettingRoutineActive = true
    
    var body: some View {
        if isSettingRoutineActive {
            VStack {
                Spacer()
                
                LottieView(JSONFileName: "Loader2", isLoop: false).frame(width: 390, height: 238, alignment: .center)
                Spacer()
                VStack (alignment: .center, spacing: 40) {
                    
                    Text("We’re setting everthing up for you! ")
                        .font(.custom("Helvetica", size: 25))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: 353, height: 60, alignment: .center)
                    
                    
                    VStack (spacing: 12){
                        
                        Text("Calulating your Anxiety level")
                            .fontWeight(hasTime1Elapsed ? .semibold : .light)
                            .font(.custom("Helvetica", size: 18))
                            .frame(width: 335, height: 44, alignment: .leading)
                            .foregroundColor(hasTime1Elapsed ? Color("TypographyColorGreen") : .black)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                    hasTime1Elapsed = true
                                }
                            }
                        
                        Text("Calulating your Depression level")
                            .fontWeight(hasTime2Elapsed ? .semibold : .light)
                            .font(.custom("Helvetica", size: 18))
                            .frame(width: 335, height: 44, alignment: .leading)
                            .foregroundColor(hasTime2Elapsed ? Color("TypographyColorGreen") : .black)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                                    hasTime2Elapsed = true
                                }
                            }
                        
                        Text("Reviewing your habits")
                            .fontWeight(hasTime3Elapsed ? .semibold : .light)
                            .font(.custom("Helvetica", size: 18))
                            .frame(width: 335, height: 44, alignment: .leading)
                            .foregroundColor(hasTime3Elapsed ? Color("TypographyColorGreen") : .black)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                                    hasTime3Elapsed = true
                                }
                            }
                        
                        Text("Finalizing your wellnes routine")
                            .fontWeight(hasTime4Elapsed ? .semibold : .light)
                            .font(.custom("Helvetica", size: 18))
                            .frame(width: 335, height: 44, alignment: .leading)
                            .foregroundColor(hasTime4Elapsed ? Color("TypographyColorGreen") : .black)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                                    hasTime4Elapsed = true
                                }
                            }
                        
                    }.padding(.leading, 60.0)
                }
                
                Spacer()
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                    self.isSettingRoutineActive = false
                }
            }
        }else {
            TestReportView()
        }

    }
    
    //MARK: Function
    /*func delayTextColor(text: Text, textcolor: Color){
        DispatchQueue.main.asyncAfter(deadline: .now() + colorTime) {
            text.foregroundColor(textcolor)
        }
        colorTime += 1.5
    }*/
}

struct SettingRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRoutineView()
    }
}
