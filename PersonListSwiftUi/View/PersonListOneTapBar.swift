//
//  PersonListOneTapBar.swift
//  PersonListSwiftUi
//
//  Created by Максим Гурков on 16.05.2022.
//

import SwiftUI

struct PersonListOneTapBar: View {
    
    let persons: [Person]

    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(person.fulName) {
                    InfoPersonView(persons: person)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Контакты")
        }
    }
}

struct PersonListOneTapBar_Previews: PreviewProvider {
    static var previews: some View {
        PersonListOneTapBar(persons: Person.dataPersone())
    }
}
