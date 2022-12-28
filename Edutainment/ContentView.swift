//
//  ContentView.swift
//  Edutainment
//
//  Created by Ian Waddington on 27/12/2022.
//

import SwiftUI

struct ContentView: View {
  
    @State private var showOptions = true
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.red, .white]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                    .ignoresSafeArea()
                
                    if showOptions {
                        OptionsView()
                    } else {
                        GameView()
                    }
                
            }
            .navigationTitle("Edutainment")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
