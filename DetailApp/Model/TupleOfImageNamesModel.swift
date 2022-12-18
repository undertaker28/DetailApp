//
//  TupleOfImageNamesModel.swift
//  DetailApp
//
//  Created by Pavel on 18.12.22.
//

// MARK: - Such model to ensure that indexing doesn't get lost when deleting an element
struct TupleOfImageNamesModel {
    let imageName: String
    let index: Int
}
