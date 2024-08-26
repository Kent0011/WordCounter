//
//  WordCounterApp.swift
//  WordCounter
//
//  Created by Kent Yamamoto on 2024/08/23.
//

import SwiftUI

@main
struct WordCounterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension String {
    func numberOfOccurrences(of word: String) -> Int {
        var count = 0
        var nextRange = self.startIndex..<self.endIndex
        if (self == ""){
            return -1
        }
        while let range = self.range(of: word, options: .caseInsensitive, range: nextRange) {
            count += 1
            nextRange = range.upperBound..<self.endIndex
        }
        return count
    }
}
