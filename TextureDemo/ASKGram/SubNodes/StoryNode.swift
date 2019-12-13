//
//  StoryNode.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 13/12/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit

class StoryNode: ASCollectionNode {
    let stories: [GramModel]
    
    init(stories: [GramModel]) {
        self.stories = stories
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 16
        layout.minimumLineSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        super.init(frame: CGRect.zero, collectionViewLayout: layout, layoutFacilitator: nil)
        self.automaticallyManagesSubnodes = true
        
        self.dataSource = self
    }
}

extension StoryNode: ASCollectionDataSource {
    func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 1
    }
    
    func collectionNode(_: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return self.stories.count
    }
    
    func collectionNode(_: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        let story = self.stories[indexPath.row]
        return { StoryCell(story: story) }
    }
}

class StoryCell: ASCellNode {
    let imageNode = ASImageNode()
    let textNode = ASTextNode()
    
    init(story: GramModel) {
        imageNode.image = story.image
        imageNode.cornerRadius = 20
        imageNode.contentMode = .scaleAspectFill
        imageNode.style.height = ASDimension(unit: .points, value: 40)
        imageNode.style.width = ASDimension(unit: .points, value: 40)
        textNode.attributedText = NSAttributedString(string: story.name)
        
        super.init()
        self.automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASStackLayoutSpec(
            direction: .vertical,
            spacing: 8,
            justifyContent: .start,
            alignItems: .center,
            children: [imageNode, textNode]
        )
    }
}
