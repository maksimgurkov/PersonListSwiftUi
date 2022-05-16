//
//  PersonInfoTwoTapBar.swift
//  PersonListSwiftUi
//
//  Created by Максим Гурков on 16.05.2022.
//

import SwiftUI

struct PersonInfoTwoTapBar: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text(person.fulName), content: {
                    Text(person.phone)
                    Text(person.email)
                })
            }
            .navigationTitle("Номера")
        }
    }
}

struct PersonInfoTwoTapBar_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoTwoTapBar(persons: Person.dataPersone())
    }
}
