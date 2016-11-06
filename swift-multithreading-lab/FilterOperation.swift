//
//  FilterOperation.swift
//  swift-multithreading-lab
//
//  Created by Benjamin Su on 11/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class FilterOperation: Operation {
    
    let flatigram: Flatigram
    let filter: String
    
    init(flatigram: Flatigram, filter: String) {
        self.flatigram = flatigram
        self.filter = filter
    }
    
    override func main() {
        if let flatigramImage = flatigram.image?.filter(with: filter) {
            flatigram.image = flatigramImage
        }
    }
}
