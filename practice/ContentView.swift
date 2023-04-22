//
//  ContentView.swift
//  practice
//
//  Created by Katherine Xu on 2023/04/14.
//

import SwiftUI

struct ContentView: View {
    
    //variables
    @State private var name = ""
    @State private var state = ""
    @State private var alert = false
    
    //body
    var body: some View {
        VStack(spacing: 100) {
            Text("What is your name?") //ask for name
                .padding(.horizontal)
                .font(.title)
            TextField("Please type name here :)", text: $name) //field
                .padding(.horizontal)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.black, width: 1)
            Text("Which state are you from?") //ask for state
                .padding(.horizontal)
                .font(.title)
            TextField("Please type name here :)", text: $state) //field
                .padding(.horizontal)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.black, width: 1)
            Button("Submit", action: {alert = true})
                .alert(isPresented: $alert) {
                                Alert(title: Text("Inputs"), message: Text("Hi \(name)! from \(state)!"), dismissButton: .default(Text("OK")))
                            }
            .padding(.top)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
