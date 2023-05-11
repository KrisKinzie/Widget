//
//  Widget.swift
//  Widget
//
//  Created by Christian Kinzie on 9/30/22.
//

import Foundation

class Widget {
    var item: String
    var bin: Int
    var serialNumber: Int
    
    init(item: String, bin: Int, serialNumber: Int) {
        self.item = item
        self.bin = bin
        self.serialNumber = serialNumber
    }
}
