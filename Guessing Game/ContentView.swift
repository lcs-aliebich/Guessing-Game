//
//  ContentView.swift
//  Guessing Game
//
//  Created by Andreas Liebich on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    @State private var theUserGuess = ""
    
    @State var target = Int.random(in: 1...100)
    
    @State private var feedback = ""
    
    @State private var gameOver = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                
                Text ("Im thinking of a number between 1 and 100 guess what it is.")
                    .font(.title)
                    .foregroundColor(Color.black)
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
                
                Button("reset game") {
                    resetGame()
                }
                
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
        
        if givenInteger == target {
            feedback = "you guessed it!"
            gameOver = true
            // Actually check to see if the user made the correct guess.
            
        }
        else if givenInteger > target {
            feedback = "too high"
        }
        else if givenInteger < target {
            feedback = "too low"
        }
    }
    

    func resetGame() {
        target = Int.random(in: 1...100)
        
        theUserGuess = ""
        feedback = ""
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

