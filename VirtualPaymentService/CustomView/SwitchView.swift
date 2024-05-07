//
//  SwitchView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 05.05.2024.
//

import UIKit

class SwitchView: UIView {
    let backgroundGradient = GradientView(frame: .zero, isInitCall: false, cornerRadius: 29)
    let enableEllipse = UIView(frame: .zero)
    let debitButton = UIButton()
    let creditButton = UIButton()
    var enableEllipseIsLeft = true
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeElements()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundGradient.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        enableEllipse.frame = CGRect(x: 0, y: 0, width: self.frame.width * 0.48, height: self.frame.height * 0.86) //5 //4
        enableEllipse.frame.origin.y = (self.frame.height - enableEllipse.frame.height) * 0.5
        let leftXposition = (self.frame.width - enableEllipse.frame.width * 2) * 0.5 // if need left border
        let rightXposition = self.frame.width * 0.5 // if need right border
        if enableEllipseIsLeft {
            enableEllipse.frame.origin.x = leftXposition
        } else {
            enableEllipse.frame.origin.x = rightXposition
        }
        debitButton.frame = CGRect(x: leftXposition, y: enableEllipse.frame.origin.y, width: self.frame.width * 0.48, height: self.frame.height * 0.86)
        creditButton.frame = CGRect(x: rightXposition, y: enableEllipse.frame.origin.y, width: self.frame.width * 0.48, height: self.frame.height * 0.86)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeElements() {
        
        self.addSubview(backgroundGradient)
        
        backgroundGradient.addSubview(enableEllipse)
        enableEllipse.backgroundColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1)
        enableEllipse.layer.cornerRadius = 25
        
        addSubview(debitButton)
        debitButton.setTitle("Debit", for: .normal)
        debitButton.setTitleColor(.black, for: .normal)
        debitButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        debitButton.addTarget(self, action: #selector(debitButtonTapped), for: .touchUpInside)
        
        addSubview(creditButton)
        creditButton.setTitle("Credit", for: .normal)
        creditButton.setTitleColor(CustomColors.main, for: .normal)
        creditButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        creditButton.addTarget(self, action: #selector(creditButtonTapped), for: .touchUpInside)
    }
    
    @objc func debitButtonTapped() {
        debitButton.setTitleColor(.black, for: .normal)
        creditButton.setTitleColor(CustomColors.main, for: .normal)
        enableEllipseIsLeft = true
        layoutSubviews()
    }
    
    @objc func creditButtonTapped() {
        debitButton.setTitleColor(CustomColors.main, for: .normal)
        creditButton.setTitleColor(.black, for: .normal)
        enableEllipseIsLeft = false
        layoutSubviews()
    }
}
