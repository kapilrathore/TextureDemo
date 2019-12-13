//
//  ASKGram.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 13/12/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit

class ASKGramController: ASViewController<ASDisplayNode> {
    
    let storyNode = StoryNode(stories: GramModel.all)
    let feedNode = FeedNode(feeds: GramModel.all)
    
    init() {
        super.init(node: ASDisplayNode())
        
        self.node.backgroundColor = .white
        self.node.automaticallyManagesSubnodes = true
        
        self.node.layoutSpecBlock = { [weak self] _,_ in
            guard let self = self else { return ASLayoutSpec() }
            self.storyNode.style.flexBasis = ASDimension(unit: .fraction, value: 0.15)
            self.feedNode.style.flexBasis = ASDimension(unit: .fraction, value: 0.85)
            return ASStackLayoutSpec(
                direction: .vertical,
                spacing: 0,
                justifyContent: .center,
                alignItems: .center,
                children: [self.storyNode, self.feedNode]
            )
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
