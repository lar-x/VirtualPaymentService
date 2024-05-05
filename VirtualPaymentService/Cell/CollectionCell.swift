//
//  CollectionCell.swift
//  VirtualPaymentService
//
//  Created by lar-x on 03.05.2024.
//


import UIKit

class CollectionCell: UICollectionViewCell {
 //   let myView = UIView()
    let myView = CardView()
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.backgroundColor = .systemGreen.withAlphaComponent(0.5)
        contentView.addSubview(myView)
        myView.backgroundColor = .red
    }
    
    override func layoutSubviews() {
          super.layoutSubviews()
        myView.frame = contentView.frame
        myView.layer.masksToBounds = true
        myView.layer.cornerRadius = 20
      }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
   
  
}
