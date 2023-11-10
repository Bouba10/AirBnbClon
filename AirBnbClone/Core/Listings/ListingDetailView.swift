//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 08.11.23.
//

import SwiftUI
import MapKit
struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame( height: 320)
                
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32 , height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment : .leading , spacing: 8 ){
                
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing :2){
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    
                    Text("Miami , Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity , alignment: .leading)
                
            Divider()
            
            
            // host info
            HStack{
                VStack(alignment: .leading){
                    Text("Entire Villa Hosted by  John Smith")
                        .font(.headline)
                        .frame(width: 250 , alignment: .leading)
                    
                    HStack{
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("4 baths ")
                    }
                    .font(.footnote)
                }
                Spacer()
                
                Image("profile_image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60 , height: 64)
                    .clipShape(Circle())
                 
                
            }.padding()
            
            Divider()
            
            VStack(alignment : .leading , spacing: 16){
                ForEach(0 ..< 2){ feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experience , highly rated hosts  who are commmited to providing stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
           .padding()
            
            Divider()
            
            // bedrooms
            VStack (alignment: .leading , spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                    .fontWeight(.semibold)
                
               
                ScrollView(.horizontal){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132 , height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                            
                        }
                    }
                   
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ForEach(1 ..< 6){_ in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
         
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading , spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom ,72)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                          
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140 , height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                    }
                }
                .padding(.horizontal ,32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
