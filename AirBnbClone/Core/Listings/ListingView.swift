//
//  ListingView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 08.11.23.
//

import SwiftUI

struct ListingView: View {
    
    var images = ["listing-1" , "listing-2" , "listing-3" , "listing-4"]
    
    var body: some View {
        VStack(spacing :8){
            //images slides
            TabView{
                
                ForEach(images, id: \.self){ image in
                    Image(image)
                     .resizable()
                     .scaledToFill()
                }
                
            }
            .frame(width: .infinity, height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //listingsDetail
            HStack(alignment : .top){
                VStack(alignment : .leading){
                    Text("Miami , Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing : 4){
                        Text("$567 ")
                        Text("night")
                    }.fontWeight(.semibold)
                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2){
                    
                    Image(systemName: "star.fill")
                    
                    Text("4.56")
                }
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    ListingView()
}
