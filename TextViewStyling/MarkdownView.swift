//
//  MarkdownView.swift
//  TextViewStyling
//
//  Created by Prakash on 29/12/25.
//
import SwiftUI
struct MarkdownView : View {
    let str = """
***My Favourite Website***
___My Favourite Website___

Here are some of my favourite websites.
1.**[Figma](https://figma.com)** Create Degital design in real time.
2.*[Figma](https://figma.com)* Create Degital design in real time.
3.***[Figma](https://figma.com)*** Create Degital design in real time.

~~This is just for Learning Purpose only~~
"""
    
    var body: some View {
        VStack {
            Text(LocalizedStringKey(str))
        }
        .tint(.red)
        .foregroundStyle(.blue)
        .padding()
        .navigationTitle("Mark Down")
    }
}


#Preview {
    NavigationStack {
        MarkdownView()
    }
}
