//
//  ShopView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 27.06.2024.
//

import UIKit

class ShopView: UIView {
    let backgroundGradient = GradientView(frame: .zero, isInitCall: false, cornerRadius: 7)
    let textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(backgroundGradient)
        self.addSubview(textLabel)
        makeLabel()
        

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundGradient.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        textLabel.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeLabel() {
        textLabel.text = "S"
        textLabel.font = UIFont(name: "Poppins-Regular", size: 22.0) //UIFont.boldSystemFont(ofSize: 14.0) //
        textLabel.textColor = CustomColors.main
        textLabel.textAlignment = .center
    }
}
