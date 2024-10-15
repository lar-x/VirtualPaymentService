//
//  ListView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 07.05.2024.
//

import UIKit

class ListView: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = CustomColors.listBackgroundRow
        self.layer.cornerRadius = 70
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
            
    
}
