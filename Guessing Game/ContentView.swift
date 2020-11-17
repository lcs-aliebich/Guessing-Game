//
//  ContentView.swift
//  Guessing Game
//
//  Created by Andreas Liebich on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    @State private var theUserGuess = 0
    
    var body: some View {
     
        NavigationView {
            VStack {
                
                Text("Guessing Game")
                Text ("Im thinking of a number between 1 and 100 guess what it is.")
                
                TextField("enter you guess here",
                          text: $theUserGuess)
                
                Button("Submit Guess") {
                    // Check the guess
                }
                Text("You guessed \(theUserGuess).")
                
            }
            .navigationTitle("Guessing Game") 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

