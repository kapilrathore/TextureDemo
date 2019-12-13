//
//  FeedNode.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 13/12/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit

class FeedNode: ASCollectionNode {
    let feeds: [GramModel]
    init(feeds: [GramModel]) {
        self.feeds = feeds
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 32
        layout.minimumLineSpacing = 32
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 16, right: 0)
        super.init(frame: CGRect.zero, collectionViewLayout: layout, layoutFacilitator: nil)
        self.automaticallyManagesSubnodes = true
        
        self.dataSource = self
    }
}

extension FeedNode: ASCollectionDataSource {
    func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 1
    }
    
    func collectionNode(_: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return self.feeds.count
    }
    
    func collectionNode(_: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        let feed = self.feeds[indexPath.row]
        return { FeedCell(feed: feed) }
    }
}

class FeedCell: ASCellNode {
    let imageNode = ASImageNode()
    let textNode = ASTextNode()
    
    init(feed: GramModel) {
        imageNode.image = feed.image
        imageNode.contentMode = .scaleAspectFill
        imageNode.style.height = ASDimension(unit: .points, value: 200)
        let screenWidth = UIScreen.main.bounds.width
        imageNode.style.width = ASDimension(unit: .points, value: screenWidth)
        textNode.attributedText = NSAttributedString(string: "♥️ 👍 \(feed.title)")
        
        super.init()
        self.automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let textWithInset = ASInsetLayoutSpec(
            insets: UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8),
            child: textNode
        )
        return ASStackLayoutSpec(
            direction: .vertical,
            spacing: 8,
            justifyContent: .start,
            alignItems: .start,
            children: [imageNode, textWithInset]
        )
    }
}
