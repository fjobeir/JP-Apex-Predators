//
//  ContentView.swift
//  JP Apex Predators
//
//  Created by Feras Jobeir on 30.06.2023.
//

import SwiftUI

struct ContentView: View {
    let apController = PredetorController()
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(apController.apexPredetor) { predator in
                        NavigationLink(destination: Text(predator.name)) {
                            Text(predator.name)
                        }
                    }
                }
                .navigationTitle("Apex Predators")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
