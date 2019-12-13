//
//  ASKGramModel.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 13/12/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import UIKit

struct GramModel {
    let name: String
    let image: UIImage
    let title: String
}

extension GramModel {
    static let all: [GramModel] = {
        return [
            GramModel(
                name: "Anuj",
                image: UIImage(named: "1")!,
                title: "The relevant UICollectionViewFlowLayout instance"
            ),
            GramModel(
                name: "Ravi",
                image: UIImage(named: "2")!,
                title: "I just got a new daily report"
            ),
            GramModel(
                name: "Kapil",
                image: UIImage(named: "3")!,
                title: "The item height must be less than the height"
            ),
            GramModel(
                name: "Aman",
                image: UIImage(named: "4")!,
                title: "Great day to be out in this coding world"
            ),
            GramModel(
                name: "Akshay",
                image: UIImage(named: "5")!,
                title: "Propagating new traits"
            ),
            GramModel(
                name: "Surya",
                image: UIImage(named: "3")!,
                title: "The type of the width and height are independent"
            ),
            GramModel(
                name: "Aman",
                image: UIImage(named: "4")!,
                title: "Great day to be out in this coding world"
            ),
            GramModel(
                name: "Akshay",
                image: UIImage(named: "5")!,
                title: "Propagating new traits"
            )
        ]
    }()
}
