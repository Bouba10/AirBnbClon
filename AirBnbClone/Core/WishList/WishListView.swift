//
//  WishListView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 10.11.23.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading , spacing: 32){
                VStack(alignment: .leading , spacing: 32){
                  
                    
                    Text("You can ceeate , view or edit whislist  once you logged in .")
                        .font(.subheadline)
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
                
            }
            .navigationTitle("WhisLists")
            Spacer()
        }
        
        
    }
}

#Preview {
    WishListView()
}
