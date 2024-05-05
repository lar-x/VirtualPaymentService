//
//  ViewController.swift
//  VirtualPaymentService
//
//  Created by lar-x on 01.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeLocalGradient()
        super.view.backgroundColor = .white
        LoadingIndicator.shared.show(indicator: self.view)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
           
            LoadingIndicator.shared.hide()
            self.pushFrameFourVC()
        }
    }
    
    
    private func makeLocalGradient() {
        
        imageView = GradientView(frame: CGRect(x: 0, y: 0, width: 100, height: 100), isInitCall: true)

        self.view.addSubview(imageView)
        //imageView.backgroundColor = .red
        imageView.frame.size = CGSize(width: 100, height: 100)
        imageView.center = self.view.center

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
    private func pushFrameFourVC() {
        
        let vC = FrameFourVC()
        vC.modalPresentationStyle = .fullScreen
        present(vC, animated: true)
    }
    
}

