//
//  InfoPersonView.swift
//  PersonListSwiftUi
//
//  Created by Максим Гурков on 16.05.2022.
//

import SwiftUI

struct InfoPersonView: View {
    
    let persons: Person
    
    var body: some View {
        VStack {
            List {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 280, height: 250)
                    .padding()
                Text(persons.phone)
                Text(persons.email)
                    
            }
            .navigationTitle(persons.fulName)
        }
        
    }
}

struct InfoPersonView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPersonView(persons: Person.dataPersone().first!)
    }
}
