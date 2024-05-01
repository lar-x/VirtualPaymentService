//
//  ViewController.swift
//  VirtualPaymentService
//
//  Created by lar-x on 01.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.center = super.view.center
        self.view.addSubview(imageView)
        
        super.view.backgroundColor = .white
        
        let colorOne = UIColor(red: 156 / 255, green: 44 / 255, blue: 243 / 255, alpha: 1.0).cgColor
        let colorTwo = UIColor(red: 58 / 255, green: 73 / 255, blue: 249 / 255, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = imageView.frame
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.cornerRadius = 20.0
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        LoadingIndicator.shared.show(indicator: self.view)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 100) {
            LoadingIndicator.shared.hide()
            
        }
    }
}

