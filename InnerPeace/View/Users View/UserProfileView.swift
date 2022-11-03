//
//  UserProfileView.swift
//  InnerPeace
//
//  Created by afnan on 09/04/1444 AH.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack(alignment:.center) {
            
            HStack{
                Text("Profile")
                .font(.custom("Helvetica", size: 25))
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                Spacer()
            }.padding()
            
            Image("nora")
                .resizable()
                .frame(width:350,height:350 )
                .aspectRatio( contentMode:.fit)
            Spacer()
            Text("Nour Ahmed")
                .font(.custom("Helvetica",size: 25))
                .fontWeight(.bold)
                .frame(width:300,height:30)
            
            Spacer()
            
            VStack (spacing: 15){
                Button(action: {
                    
                }) {
                    Text("Mental Health Report")
                    .font(.custom("Helvetica", size: 21))
                    .foregroundColor(.black)
                    .frame(width: 346.0, height: 48.0)
                    .background(
                    RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("PrimaryColorB"), lineWidth: 1)
                    .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2))
                }
                
                Button {
                    
                } label: {
                    Text("pending Hapits")
                    .font(.custom("Helvetica", size: 21))
                    .foregroundColor(.black)
                    .frame(width: 346.0, height: 48.0)
                    .background(
                      RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("PrimaryColorB"), lineWidth: 1)
                    .shadow(color: Color("PrimaryColorB"), radius: 2, x: 0, y: 2))
                    
                }
                
                
                
            }
            Spacer()
            
            Button {
                
            } label: {
                Text("Signout")
                 .font(.custom("Helvetica", size: 21))
                 .foregroundColor(.white)
                 .frame(width: 346.0, height: 48.0)
                 .background(Color("PrimaryColorB"))
                 .cornerRadius(10)
            }
            
            Spacer()
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
