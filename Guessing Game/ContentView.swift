//
//  ContentView.swift
//  Guessing Game
//
//  Created by Andreas Liebich on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    @State private var theUserGuess = ""
    let target = Int.random(in: 1...100)
    @State private var feedback = ""
    var body: some View {
        
        NavigationView {
            VStack {
                
                
                Text ("Im thinking of a number between 1 and 100 guess what it is.")
                    .font(.title)
                    .foregroundColor(Color.red)
                    .padding([.top, .leading, .trailing])
                
                
                TextField("Enter you guess here",
                          text: $theUserGuess)
                    .padding(.horizontal)
                
                Button("Submit Guess") {
                    // Check the guess
                    checkGuess()
                    
                }
                .padding(.top)
                Text("You guessed \(theUserGuess).")
                Spacer()
                Text(" \(feedback)")
                Spacer()
                
                
            }
            .navigationTitle("Guessing Game")
        }
    }
    
    // Chwck what user guessed against taarget
    
    func checkGuess() {
        
        guard let givenInteger = Int(theUserGuess) else {
            feedback = "please provide an integer between 1 and 100"
            return
            
            
            
        }
        guard givenInteger > 0, givenInteger < 101 else{
            feedback = "please provide an integer between 1 and 100"
            return
        }
        
        // Actually check to see if the user made the correct guess.
        feedback = "You made a guess."
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

