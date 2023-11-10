//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by Boubacar sidiki barry on 09.11.23.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var isHiddeDestinationSearchView : Bool
    @State private  var destination = ""
    @State private var selectedOption : DestinationSearchOptions = .location
    @State private var numberOfGuest : Int = 0
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    @State  var quantity = 0
    
    var body: some View {
        
        VStack{
            
        HStack {
            Button {
                self.isHiddeDestinationSearchView.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .foregroundStyle(.black)
                    
            }
            Spacer()
            
            if !destination.isEmpty{
                Button("Clear"){
                    destination = ""
                }
                .foregroundStyle(.black)
                .font(.subheadline)
                .fontWeight(.semibold)
            }
            
        }
        .padding()
        
        
        
        VStack(alignment: .leading) {
            if selectedOption == .location{
                Text("Where to ?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack{
                    
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destination", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay{
                    RoundedRectangle(cornerRadius: 122)
                        .stroke(lineWidth: 0.5)
                        .foregroundStyle(Color(.systemGray4))
                    
                }
                
            }else{
                CollapsPickerView(title: "Where", description: " Add Destination")
                
            }
            
            
        }
        .modifier(CollapsibleDestinationModifer())
        .frame(height: selectedOption == .location ? 126 :64)
        .onTapGesture {
            withAnimation(.snappy){  selectedOption = .location }
        }
        
        //date selection
        VStack{
            if selectedOption == .dates{
                
                VStack (alignment: .leading ){
                    
                    Text("When's your Trip")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    DatePicker("From", selection: $startDate, displayedComponents: .date)
                    
                    Divider()
                    
                    DatePicker("to", selection: $endDate, displayedComponents: .date)
                    
                }
                .foregroundStyle(.gray)
                .fontWeight(.semibold)
                .padding(.vertical)
                
            }else{
                CollapsPickerView(title: "When", description: " Add Date")
                
            }
        }
        .modifier(CollapsibleDestinationModifer())
        .frame(height: selectedOption == .dates ? 180 :64)
        .onTapGesture {
            withAnimation(.snappy){  selectedOption = .dates }
        }
        
        
        
        //num gast
        VStack {
            if selectedOption == .guests {
                VStack(alignment: .leading) {
                    Text("Who's coming ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numberOfGuest) Adults")
                    } onIncrement: {
                        self.numberOfGuest += 1
                        print("Add 1")
                    } onDecrement: {
                        if numberOfGuest > 0 {
                            self.numberOfGuest -= 1
                            print("sub 1")
                        }
                        
                    }
                    
                    
                    
                    
                    //                    Stepper("\(numberOfGuest) Adults", value: $numberOfGuest , step: 1)
                    
                }
                
            }else{
                CollapsPickerView(title: "Who", description: "Add Gaste")
            }
            
            
        }
        .modifier(CollapsibleDestinationModifer())
        .frame(height: selectedOption == .guests ? 126 :64)
        .onTapGesture {
            withAnimation(.snappy) {  selectedOption = .guests }
        }
            
            Spacer()
        
    }
        
    }
}

#Preview {
    DestinationSearchView(isHiddeDestinationSearchView: .constant(true))
}

struct  CollapsibleDestinationModifer : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
    
    
}
