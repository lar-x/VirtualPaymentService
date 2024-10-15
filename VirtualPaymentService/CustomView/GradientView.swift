//
//  GradientView.swift
//  VirtualPaymentService
//
//  Created by lar-x on 04.05.2024.
//

import UIKit


//class GradientView: UIImageView {
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        print("GradientView frame - \(self.frame)")
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private func makeGradient() {
//
//        let colorOne = UIColor(red: 156 / 255, green: 44 / 255, blue: 243 / 255, alpha: 1.0).cgColor
//        let colorTwo = UIColor(red: 58 / 255, green: 73 / 255, blue: 249 / 255, alpha: 1.0).cgColor
//
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.frame
//        gradientLayer.colors = [colorOne, colorTwo]
//        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
//        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
//        gradientLayer.cornerRadius = 20.0
//        self.layer.insertSublayer(gradientLayer, at: 0)
//
//    }
//
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        makeGradient()
//    }
//}

class GradientView: UIView {
    
    private let isInitCall: Bool
    private let cornerRadius: Int

    init(frame: CGRect, isInitCall: Bool, cornerRadius: Int) {
        self.isInitCall = isInitCall
        self.cornerRadius = cornerRadius
        super.init(frame: frame)
        if isInitCall {
            makeGradient()
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func makeGradient() {

        let colorOne = CustomColors.gradientUp.cgColor //UIColor(red: 156 / 255, green: 44 / 255, blue: 243 / 255, alpha: 1.0).cgColor
        let colorTwo = CustomColors.gradientDown.cgColor //UIColor(red: 58 / 255, green: 73 / 255, blue: 249 / 255, alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.frame
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.cornerRadius = CGFloat(cornerRadius)//20.0
        self.layer.insertSublayer(gradientLayer, at: 0)

    }


    override func layoutSubviews() {
        super.layoutSubviews()
        if !isInitCall { makeGradient() }
    }
}
