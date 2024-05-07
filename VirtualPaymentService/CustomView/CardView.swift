//
//  CardView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 04.05.2024.
//

import UIKit


class CardView: UIView {
    let myImage = GradientView(frame: .zero, isInitCall: false, cornerRadius: 30)
    let currentBNameLabel = UILabel()
    let currentBDebetLabel = UILabel()
    let masterCardImageView = UIImageView(frame: .zero)
    let cardNumerLabel = UILabel()
    let cardDateLabel = UILabel()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(myImage)
        makeElements()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImage.frame = self.frame
        currentBNameLabel.frame = CGRect(x: self.frame.width * 0.095, y: self.frame.height * 0.158/*0.108*/, width: self.frame.width * 0.5, height: self.frame.height * 0.108)
        currentBDebetLabel.frame = CGRect(x: self.frame.width * 0.095, y: self.frame.height * 0.2826, width: self.frame.width * 0.5, height: self.frame.height * 0.228)
        masterCardImageView.frame = CGRect(x: self.frame.width * 0.8, y: self.frame.height * 0.081, width: self.frame.width * 0.142, height: masterCardImageView.frame.width * 0.8)
        cardNumerLabel.frame = CGRect(x: self.frame.width * 0.095, y: self.frame.height * 0.793, width: self.frame.width * 0.6, height: self.frame.height * 0.114)
        cardDateLabel.frame = CGRect(x: self.frame.width * 0.8, y: self.frame.height * 0.793, width: self.frame.width * 0.2, height: self.frame.height * 0.114)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeElements() {
        
        addSubview(currentBNameLabel)
        currentBNameLabel.text = "Current Balance"
        currentBNameLabel.font = UIFont(name: "Poppins-Regular", size: 14.0)
        currentBNameLabel.textColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 0.46)
        currentBNameLabel.textAlignment = .left
        
        addSubview(currentBDebetLabel)
        currentBDebetLabel.text = "$5,750.20"
        currentBDebetLabel.font = UIFont(name: "Poppins-Regular", size: 28.0)
        currentBDebetLabel.textColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1)
        currentBDebetLabel.textAlignment = .left
        
        addSubview(masterCardImageView)
        masterCardImageView.image = UIImage(named: "masterCard")
        
        addSubview(cardNumerLabel)
        cardNumerLabel.text = "5282 3456 7890 1289"
        cardNumerLabel.font = UIFont(name: "Poppins-Regular", size: 14.0)
        cardNumerLabel.textColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1)
        cardNumerLabel.textAlignment = .left
        
        addSubview(cardDateLabel)
        cardDateLabel.text = "09/25"
        cardDateLabel.font = UIFont(name: "Poppins-Regular", size: 14.0)
        cardDateLabel.textColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1)
        cardDateLabel.textAlignment = .left
    }

}
