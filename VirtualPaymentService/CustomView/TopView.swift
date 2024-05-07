//
//  TopView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 03.05.2024.
//

import UIKit

class TopView: UIView {
    
    enum TypeButton: String {
        case menu = "menuButton"
        case back = "backButton"
        
        var image: UIImage {
            return UIImage(named: self.rawValue) ?? UIImage()
        }
    }
    
    let leftButton = UIButton()
    let rightButton = UIButton()
    
    let typeButton: TypeButton = .menu
    
    init(frame: CGRect, type: TypeButton) {
        
        //self.typeButton = type //What is it? Why no error where var typeButton: TypeButton = .menu
        super.init(frame: frame)
        makeButtons()
        
        //self.backgroundColor = .systemCyan
    }
    
    override func layoutSubviews() {
        leftButton.frame = CGRect(x: 0, y: 0, width: self.frame.height * 1.4, height: self.frame.height)
        rightButton.frame = CGRect(x: self.frame.width - self.frame.height, y: 0, width: self.frame.height, height: self.frame.height)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeButtons() {
        
        addSubview(leftButton)
        addSubview(rightButton)
        leftButton.setBackgroundImage(typeButton.image, for: .normal)
        rightButton.setBackgroundImage(UIImage(named: "userButton"), for: .normal)
    }
    
}
