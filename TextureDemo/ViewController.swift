//
//  ViewController.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 04/10/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASViewController<ASDisplayNode> {
    
    init() {
        super.init(node: ASDisplayNode())
        self.node.backgroundColor = .white
        self.node.automaticallyManagesSubnodes = true
        
        let collectionNode = CollectionNode(movies: Movie.dummyData())
        let tableNode = TableNode(movies: Movie.dummyData())
        
        self.node.layoutSpecBlock = { _,_ -> ASLayoutSpec in
            collectionNode.style.height = ASDimension(unit: .points, value: 64)
            tableNode.style.height = ASDimension(unit: .fraction, value: 1)
            
            let mainStack = ASStackLayoutSpec(
                direction: .vertical,
                spacing: 8,
                justifyContent: .start,
                alignItems: .start,
                children: [collectionNode, tableNode]
            )
            return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 4, left: 4, bottom: 0, right: 4), child: mainStack)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
