//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 08.11.23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing : 32){
                    
                    ForEach(0 ... 10 , id: \.self ){ _ in
                        
                       ListingView()
                            .frame(width: .infinity, height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                    
                }.padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
