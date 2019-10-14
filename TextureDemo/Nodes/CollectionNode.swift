//
//  CollectionNode.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 14/10/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit

class CollectionNode: ASCollectionNode {
    
    let movies: [Movie]
    init(movies: [Movie]) {
        self.movies = movies
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 8
        super.init(frame: .zero, collectionViewLayout: layout, layoutFacilitator: nil)
        
        self.automaticallyManagesSubnodes = true
        self.dataSource = self
        self.showsHorizontalScrollIndicator = false
    }
}

extension CollectionNode: ASCollectionDataSource {
    func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 1
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        let movie = self.movies[indexPath.row]
        return { () -> ASCellNode in
            let node = CellNode(movie: movie)
            node.cornerRadius = 5
            return node
        }
    }
}
