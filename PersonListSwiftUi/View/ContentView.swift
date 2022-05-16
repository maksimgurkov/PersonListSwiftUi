//
//  ContentView.swift
//  PersonListSwiftUi
//
//  Created by Максим Гурков on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.dataPersone()
    
    var body: some View {
        TabView {
            PersonListOneTapBar(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("Контакты")
                }
            PersonInfoTwoTapBar(persons: persons)
                .tabItem {
                    Image(systemName: "phone.and.waveform.fill")
                    Text("Номера")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
