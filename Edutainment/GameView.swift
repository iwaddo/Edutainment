//
//  GameView.swift
//  Edutainment
//
//  Created by Ian Waddington on 27/12/2022.
//

import SwiftUI

struct GameView: View {

    var chosenTable: Int = 2
    var numQuestions: Int = 5
    
    
    var body: some View {
        VStack {
            Text("GameView")
            Text("Chosen Table: \(chosenTable)")
            Text("Number of Questions: \(numQuestions)")
            
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
