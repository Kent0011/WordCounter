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
            HStack(spacing:20){
                Button("Reset"){
                    inputText = ""
                }
                Button("Count") {
                    textnumber = inputText.count
                }
            }
            Text("文字数 : \(textnumber)")
                .padding()
            
        }
        .frame(minWidth: 200, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
