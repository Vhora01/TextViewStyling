//
//  ContentView.swift
//  TextViewStyling
//
//  Created by Prakash on 29/12/25.
//

import SwiftUI



struct ContentView: View {
  
    var body: some View {
        NavigationStack{
            Form {
                NavigationLink("Style Text") {
                    TextStyleView()
                }
                NavigationLink("Mark down Text") {
                    MarkdownView()
                }
            }
            .navigationTitle("Text Styling")
        }
    }
}

#Preview {
    ContentView()
}



protocol CustomeButtonDelegate:AnyObject{
    func didTap(withTitle title : String)
}
