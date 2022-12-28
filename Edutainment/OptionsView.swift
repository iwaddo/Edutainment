//
//  OptionsView.swift
//  Edutainment
//
//  Created by Ian Waddington on 27/12/2022.
//

import SwiftUI

struct OptionsView: View {
    @State private var chosenTable: Int = 5
    @State private var numQuestions: Int = 10
    
    let tableChoices = 2...12
    let questionsToAsk:[Int] = [5, 10, 20]
    


    
    var body: some View {
        VStack {
            VStack(spacing: 30) {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Pick a Table to Test")
                            .font(.headline)
                            .foregroundStyle(.primary)
                        Stepper("Selected Table: \(chosenTable)", value: $chosenTable, in: tableChoices, step: 1)
                            .padding()
                            .background(.thickMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("How many questions to ask?")
                            .font(.headline)
                            .foregroundStyle(.primary)
                        Picker("How many questions to test?", selection: $numQuestions) {
                            ForEach(questionsToAsk, id: \.self) {
                                Text("\($0)")
                            }
                        }
                        .pickerStyle(.segmented)
                        .padding()
                        .background(.thickMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                    
                }
            }
            .padding(.bottom, 20)
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack {
                Text("OptionsView")
                Text("Selected Table is: \(chosenTable)")
                Text("Number of Questions to Ask is: \(numQuestions)")
            }
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
            Spacer()
            Text("Start")
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .background(.thickMaterial)
                .foregroundColor(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .onTapGesture(perform: {startFunc(chosenTable, numQuestions)})
            
        }
        .padding()
        
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
