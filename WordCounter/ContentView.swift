//
//  ContentView.swift
//  WordCounter
//
//  Created by Kent Yamamoto on 2024/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var textnumber = 0
    var body: some View {
        VStack() {
            TextField("テキストを入力", text:$inputText)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

                Button("Reset"){
                    inputText = ""
                }
            Text("文字数 : \(inputText.count)")
                .padding()
            Text("words : \(inputText.numberOfOccurrences(of: " ")+1)")
            
        }
        .frame(minWidth: 200, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
