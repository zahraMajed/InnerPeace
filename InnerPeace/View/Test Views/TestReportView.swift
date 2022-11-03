//
//  TestReportView.swift
//  InnerPeace
//
//  Created by Zahra Majed Alzawad on 07/04/1444 AH.
//

import SwiftUI
import SwiftUICharts

struct TestReportView: View {
    @EnvironmentObject var anxietySettingObj : AnxietySettings
    @EnvironmentObject var depressionSettingObj : DepressionSettings
    @EnvironmentObject var routineSettingObj : RoutineSettings
    @State private var showNextScreen = false
    
    //MARK: Variables
    let chartStyle = ChartStyle(backgroundColor: .white, accentColor: Color("SecondaryColorGreyGreen"), secondGradientColor: Color("SecondaryColorBeige"), textColor: .black, legendTextColor: .black, dropShadowColor: .white)
    
    //MARK: Body
    var body: some View {
        VStack {
            Spacer()
            BarChartView(data: ChartData(values: [("Anxiety", anxietySettingObj.score), ("Depression", depressionSettingObj.score)]), title: "", style: chartStyle, form: CGSize(width: 300, height: 300), animatedToBack: true)
                .padding(.leading, 45.0)
            
            Spacer()
            VStack (spacing: 28){
                Text(getAnxietyStatus())
                    .font(.custom("Helvetica", size: 21))
                    .fontWeight(.regular)
                    .padding(.leading)
                    .frame(width: 346.0, height: 48.0, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("PrimaryColorB"), lineWidth: 1)
                    .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2))

                    Text(getDepressionStatus())
                        .font(.custom("Helvetica", size: 21))
                        .fontWeight(.regular)
                        .padding(.leading)
                        .frame(width: 346.0, height: 48.0, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("PrimaryColorB"), lineWidth: 1)
                            .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2))
            }
            Spacer()
            
            Button("Discover my routine") {
                showNextScreen = true
            }
            .frame(width: 346, height: 41)
            .background(Color("PrimaryColorB"))
            .foregroundColor(.white)
            .cornerRadius(10)
            .fullScreenCover(isPresented: $showNextScreen) {
                RoutineView()
            }
            Spacer()
        }.environmentObject(routineSettingObj)
    }
    //MARK: Function
    private func getAnxietyStatus() -> String {
        let anxietyScore = anxietySettingObj.score
        switch anxietyScore {
        case 0..<5:
            return "No Anxiety"
        case 5..<10:
            return "Mild Anxiety"
        case 10..<15:
            return "Moderate Anxiety"
        case 15..<22:
            return "Sever Anxiety"
        default:
            return ""
        }
    }
    
    private func getDepressionStatus() -> String {
        let depressionScore = depressionSettingObj.score
        switch depressionScore {
        case 0..<5:
            return "No Depression"
        case 5..<10:
            return "Mild Depression"
        case 10..<15:
            return "Moderate Depression"
        case 15..<21:
            return "Moderately Sever Depression"
        case 21..<28:
            return "Sever Depression"
        default:
            return ""
        }
    }
    
}

struct TestReportView_Previews: PreviewProvider {
    static var previews: some View {
        TestReportView()
            .environmentObject(AnxietySettings()).environmentObject(DepressionSettings())
            .environmentObject(RoutineSettings())
    }
}
