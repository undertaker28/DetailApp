//
//  FillData.swift
//  DetailApp
//
//  Created by Pavel on 18.12.22.
//

final class TupleOfImageNames {
    var tupleOfImageNames: [TupleOfImageNamesModel] = []
    
    init() {
        initTupleOfImageNames()
    }
    
    func initTupleOfImageNames() {
        let imageNames = DataModel().data
        for i in 0..<1000 {
            tupleOfImageNames.append(TupleOfImageNamesModel(imageName: imageNames[i % 10], index: i))
        }
    }
}
