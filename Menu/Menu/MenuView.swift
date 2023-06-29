//
//  ContentView.swift
//  Menu
//
//  Created by Alex Hulford on 2023-06-27.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems){ item in
            
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
            
        }
        .onAppear(perform: {
            // Call for data
           menuItems = dataService.getData()
        })
        .listStyle(.plain)
        
        
    }
}

#Preview {
    MenuView()
}
