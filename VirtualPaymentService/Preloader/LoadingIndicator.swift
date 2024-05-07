//
//  LoadingIndicator.swift
//  VirtualPaymentService
//
//  Created by lar-x on 01.05.2024.
//

import UIKit
import NVActivityIndicatorView

class LoadingIndicator: UIView {
    
    public static let shared = LoadingIndicator()
    
    private var indicator: NVActivityIndicatorView = {
        
        let indicator = NVActivityIndicatorView(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30), type: .ballPulse, color: .black)
        
        indicator.translatesAutoresizingMaskIntoConstraints = false
        
        return indicator
    }()
    
    func show(indicator forView: UIView) {
       
        indicator.startAnimating()
        
        forView.addSubview(indicator)
        
        indicator.topAnchor.constraint(equalTo: forView.bottomAnchor, constant: -100).isActive = true
        indicator.centerXAnchor.constraint(equalToSystemSpacingAfter: forView.centerXAnchor, multiplier: 0).isActive = true
        indicator.widthAnchor.constraint(equalToConstant: 30).isActive = true
        indicator.heightAnchor.constraint(equalToConstant: 30).isActive = true

//        indicator.centerYAnchor.constraint(equalToSystemSpacingBelow: forView.centerYAnchor, multiplier: 0).isActive = true
//        indicator.bottomAnchor.constraint(equalTo: forView.bottomAnchor, constant: 0).isActive = true
//        indicator.leftAnchor.constraint(equalTo: forView.leftAnchor, constant: 0).isActive = true
//        indicator.rightAnchor.constraint(equalTo: forView.rightAnchor, constant: 0).isActive = true
         
        indicator.bringSubviewToFront(forView)
    }
    
    func hide() {
        
        indicator.stopAnimating()
        indicator.removeFromSuperview()
    }
}

