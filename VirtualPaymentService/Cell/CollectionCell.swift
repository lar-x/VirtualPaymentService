//
//  CollectionCell.swift
//  VirtualPaymentService
//
//  Created by lar-x on 03.05.2024.
//


import UIKit

class CollectionCell: UICollectionViewCell {
    let myView = CardView()
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.backgroundColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1) // .systemGreen.withAlphaComponent(0.5)
        contentView.addSubview(myView)
        //myView.backgroundColor = .red
    }
   
    
    
    override func layoutSubviews() {
          super.layoutSubviews()
        //myView.frame = contentView.frame
        myView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        myView.layer.masksToBounds = true
        myView.layer.cornerRadius = 30
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
