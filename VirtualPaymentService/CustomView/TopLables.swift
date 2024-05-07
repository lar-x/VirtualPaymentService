//
//  TopLables.swift
//  VirtualPaymentService
//
//  Created by lar-x on 03.05.2024.
//

import UIKit

class TopLables: UIView {
    
    let upLabel = UILabel()
    let downLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeLabels()
        
        //self.backgroundColor = .systemMint
    }
    
    override func layoutSubviews() {
        upLabel.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height * 0.36)
        downLabel.frame = CGRect(x: 0, y: upLabel.frame.height, width: self.frame.width, height: self.frame.height * 0.64)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeLabels() {
        
        addSubview(upLabel)
        addSubview(downLabel)
        
        upLabel.text = "Total Balance"
        upLabel.font = UIFont(name: "Poppins-Regular", size: 12.0)
        downLabel.text = "$3,565.86"
        downLabel.font = UIFont(name: "Poppins-Regular", size: 21.0)
        
        upLabel.textColor = .black.withAlphaComponent(0.7)
        downLabel.textColor = .black
        
        upLabel.textAlignment = .center
        downLabel.textAlignment = .center
    }
}
