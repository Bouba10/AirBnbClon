//
//  CollapsPickerView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 09.11.23.
//

import SwiftUI

struct CollapsPickerView: View {
    
    var title :         String = "xxx"
    var description:    String = " yyyy"
    
    var body: some View {
        VStack{
            
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .font(.headline)
            .fontWeight(.semibold)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//       
//        .padding()
//        .shadow(radius: 10)
    }
}

#Preview {
    CollapsPickerView()
}
