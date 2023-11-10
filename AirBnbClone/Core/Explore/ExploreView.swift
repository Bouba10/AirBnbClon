//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 08.11.23.
//

import SwiftUI

struct ExploreView: View {
    @State  private var isShowDestinationSearchView = false
    
    var body: some View {
        
        NavigationStack{
            if self.isShowDestinationSearchView {
                DestinationSearchView(isHiddeDestinationSearchView: self.$isShowDestinationSearchView)
            }else{
                 
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                self.isShowDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing : 32){
                        
                        ForEach(0 ... 10 , id: \.self ){ listing in
                            
                            NavigationLink(value: listing) {
                                ListingView()
                                     .frame(width: .infinity, height: 400)
                                     .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                        
                        
                        
                    }.padding()
                }
                .navigationDestination(for: Int.self) { listing  in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
            
          
           
        }
    }
}

#Preview {
    ExploreView()
}
