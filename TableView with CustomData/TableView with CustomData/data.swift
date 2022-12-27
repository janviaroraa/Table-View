//
//  data.swift
//  TableView with CustomData
//
//  Created by Powerplay on 27/12/22.
//

import Foundation

class Data {
    var title: String
    var desc: String
    var count: Int32
    var pic: String
    
    init(title: String, desc: String, count: Int32, pic: String) {
        self.title = title
        self.desc = desc
        self.count = count
        self.pic = pic
    }
}
