//
//  ProfileView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 10.11.23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (alignment: .leading , spacing: 5){
            VStack(alignment: .leading , spacing: 5){
                Text("Profile")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Log in to  start planning your next trip .")
                    .fontWeight(.semibold)
            }.padding()
            
            Button{
                
            }label: {
                Text("Log in")
            }
            .frame(width: 350 , height: 60)
            .background(.pink)
            .foregroundStyle(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            
            
            HStack {
                Text("Don't have an account ?")
                
                Text("Sign up")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .underline()
            }
            .padding()
            VStack(alignment : .leading){
               
                ProfileActionRowView(image: "gear", title: "Setting")
                
                ProfileActionRowView(image: "gear", title: "Accessibility")
                
                ProfileActionRowView(image: "questionmark.circle", title: "Visit Help Center")
                   
                
            }.padding()
            
        }
       
    }
}

#Preview {
    ProfileView()
}

struct ProfileActionRowView: View {
    var image : String
    var title : String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .resizable()
                .frame(width: 30, height: 30)
            Text(title)
            
            Spacer()
            
            Image(systemName: "chevron.right")
            
        }
        Divider()
        .padding(.vertical)
    }
}
