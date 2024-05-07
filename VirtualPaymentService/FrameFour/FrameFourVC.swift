//
//  FrameFourVC.swift
//  VirtualPaymentService
//
//  Created by lar-x on 01.05.2024.
//

import UIKit

class FrameFourVC: UIViewController {
    
    let topView = TopView(frame: .zero, type: .back)
    let topLables = TopLables(frame: .zero)
    var myCollection: UICollectionView! 
    let switchView = SwitchView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1)
        
        view.addSubview(topView)
        view.addSubview(topLables)
        view.addSubview(switchView)
      
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        myCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        myCollection.backgroundColor = CustomColors.main
        view.addSubview(myCollection)
        
        //myCollection.backgroundColor = .yellow.withAlphaComponent(0.6)
        myCollection.register(CollectionCell.self, forCellWithReuseIdentifier: "CollectionCell")
        myCollection.delegate = self
        myCollection.dataSource = self
        
        createFrames()
    }
    
    func createFrames() {
        
        topView.frame = CGRect(x: 0, y: self.view.frame.height * 0.06, width: self.view.frame.width * 0.84, height: self.view.frame.height * 0.033)
        topView.center.x = self.view.center.x
        
        topLables.frame = CGRect(x: topView.frame.origin.x, y: 0, width: topView.frame.width, height: self.view.frame.height * 0.06)
        topLables.center.y = topView.center.y + (topView.frame.height / 2) + (topLables.frame.height / 2) + 20
        
        myCollection.frame = CGRect(x: topView.frame.origin.x, y: 0, width: self.view.frame.width * 0.9, height: self.view.frame.height * 0.23)
        myCollection.center.y = topLables.center.y + (topLables.frame.height / 2) + (myCollection.frame.height / 2) + 20
        
        switchView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width * 0.498, height: self.view.frame.height * 0.0616)
        switchView.center.x = self.view.center.x
        switchView.center.y = myCollection.center.y + (myCollection.frame.height / 2) + (switchView.frame.height / 2) + 20

    }

}

extension FrameFourVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCollection.frame.size.width * 0.95, height: myCollection.frame.size.height * 0.95)
    }
}
