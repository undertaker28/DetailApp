//
//  DataModel.swift
//  DetailApp
//
//  Created by Pavel on 18.12.22.
//

struct DataModel {
    var data = ImageNames.arrayOfImageNames
    
    init(data: [String] = ImageNames.arrayOfImageNames) {
        self.data = data
    }
}
