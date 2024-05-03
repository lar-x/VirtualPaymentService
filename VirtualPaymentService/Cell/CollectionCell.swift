//
//  CollectionCell.swift
//  VirtualPaymentService
//
//  Created by lar-x on 03.05.2024.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = .systemGreen.withAlphaComponent(0.5)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
