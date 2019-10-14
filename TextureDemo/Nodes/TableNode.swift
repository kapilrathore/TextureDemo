//
//  TableNode.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 07/10/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit

class TableNode: ASTableNode {
    var movies: [Movie]
    
    init(movies: [Movie]) {
        self.movies = movies
        
        super.init(style: .plain)
        self.automaticallyManagesSubnodes = true
        self.dataSource = self
    }
    
    func sortMovies() {
        self.movies.sort { $0.stars > $1.stars }
        self.reloadData()
    }
}

extension TableNode: ASTableDataSource, ASTableDelegate {
    func numberOfSections(in tableNode: ASTableNode) -> Int {
        return 1
    }
    
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        let movie = movies[indexPath.row]
        return { CellNode(movie: movie) }
    }
}
