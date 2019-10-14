//
//  CellNode.swift
//  TextureDemo
//
//  Created by kapilrathore-mbp on 07/10/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import AsyncDisplayKit

class CellNode: ASCellNode {
    let titleLabel = ASTextNode()
    let descriptionLabel = ASTextNode()
    let sideLabel = ASTextNode()
    
    init(movie: Movie) {
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]
        titleLabel.attributedText = NSAttributedString(string: movie.title, attributes: attributes)
        descriptionLabel.attributedText = NSAttributedString(string: movie.subtitle)
        sideLabel.attributedText = NSAttributedString(string: movie.rating())
        super.init()
        self.backgroundColor = .lightGray
        self.automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let vStack = ASStackLayoutSpec(
            direction: .vertical,
            spacing: 4.0,
            justifyContent: .start,
            alignItems: .start,
            flexWrap: .wrap,
            alignContent: .start,
            children: [titleLabel, descriptionLabel]
        )
        
        let hStack = ASStackLayoutSpec (
            direction: .horizontal,
            spacing: 16.0,
            justifyContent: .spaceBetween,
            alignItems: .center,
            flexWrap: .wrap,
            alignContent: .start,
            lineSpacing: 16.0,
            children: [vStack, sideLabel]
        )
        
        return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16), child: hStack)
    }
}
