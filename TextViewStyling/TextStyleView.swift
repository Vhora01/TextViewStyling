//
//  TextStyleView.swift
//  TextViewStyling
//
//  Created by Prakash on 29/12/25.
//

import SwiftUI

struct LineOfDocument : Identifiable{
    let id = UUID()
    let line : String
    
    var firstChar: String{
        if let first = line.first{
            return String(first)
        }else {
            return ""
        }
    }
    var remainingChar: String {
        String(line.dropFirst())
    }
}


struct TextStyleView : View {
    let lines = [
        LineOfDocument(line: "First Line of the statements."),
        LineOfDocument(line: "This is just for learning purpose."),
        LineOfDocument(line: "This structure contain sample string."),
    ]
    let linear = LinearGradient(
        colors: [.red,.green,.blue,.purple],
        startPoint: .top,
        endPoint: .bottom
    )
    var body: some View {
        VStack {
            Text("\(Text("I").foregroundStyle(.red).bold().font(.largeTitle))\(Text("ntroduction").foregroundStyle(linear).font(.title))")
                .font(.title)
            
            VStack(alignment:.leading){
                ForEach(lines){ line in
                    Text("\(Text(line.firstChar).foregroundStyle(.red).bold())\(line.remainingChar)")
                }
                .font(.headline)
            }
            Spacer()
            Text("***Hello***")
        }
        .padding()
        .navigationTitle("Text Style")
    }
}


#Preview {
    NavigationStack {
        TextStyleView()
    }
}
