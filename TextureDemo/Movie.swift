//
//  Movie.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 14/10/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import Foundation

struct Movie {
    let title: String
    let subtitle: String
    let stars: Int
    func rating() -> String {
        return String(repeating: "⭐️", count: stars)
    }
}

extension Movie {
    static func dummyData() -> [Movie] {
        return [
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1),
            Movie(title: "Jai Ho", subtitle: "Some patriotic movie", stars: 4),
            Movie(title: "Hai Jo", subtitle: "Some random movie", stars: 2),
            Movie(title: "OneTwoThree", subtitle: "Some comedy movie", stars: 3),
            Movie(title: "Conjuring", subtitle: "Some horror movie", stars: 5),
            Movie(title: "Mat Ho", subtitle: "Some horrible movie", stars: 1)
        ]
    }
}
