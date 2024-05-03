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
        
        self.backgroundColor = .systemMint
    }
    
    override func layoutSubviews() {
        upLabel.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height * 0.5)
        downLabel.frame = CGRect(x: 0, y: self.frame.height * 0.5, width: self.frame.width, height: self.frame.height * 0.5)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeLabels() {
        
        addSubview(upLabel)
        addSubview(downLabel)
        
        upLabel.text = "Total Balance"
        upLabel.font = UIFont.systemFont(ofSize: 14)
        downLabel.text = "$3,565.86"
        downLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        upLabel.textColor = .black.withAlphaComponent(0.7)
        downLabel.textColor = .black
        
        upLabel.textAlignment = .center
        downLabel.textAlignment = .center
    }
}
