//
//  CardView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 04.05.2024.
//

import UIKit


class CardView: UIView {
    let myImage = GradientView(frame: .zero, isInitCall: false)
        
    override init(frame: CGRect) {
        //myImage = GradientView(frame: frame)
        super.init(frame: frame)
        self.addSubview(myImage)
    
    }
    override func layoutSubviews() {
          super.layoutSubviews()
         myImage.frame = self.frame
       // myView.frame = contentView.frame
      }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
