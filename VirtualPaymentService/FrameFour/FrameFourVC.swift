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
    let tableView = UITableView()
    let switchView = SwitchView()
    let shopDataArray: [ShopData] = [shop1, shop2, shop3, shop4, shop5, shop6, shop7, shop8, shop9, shop10]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = CustomColors.main //UIColor(red: 246 / 255, green: 246 / 255, blue: 246 / 255, alpha: 1)
        
        addSubViews()
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
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.frame = CGRect(x: 10, y: 20, width: self.view.frame.width, height: self.view.frame.height * 0.446)
        tableView.center.x = self.view.center.x
        tableView.center.y = switchView.center.y + (switchView.frame.height / 2) + (tableView.frame.height / 2) + 20
    }
    
    func addSubViews() {
        
        view.addSubview(topView)
        view.addSubview(topLables)
        view.addSubview(switchView)
        setupAndAddCollection()
        setupAndAddList()
    }
    
    func setupAndAddCollection() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        myCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        myCollection.backgroundColor = CustomColors.main
        view.addSubview(myCollection)
        //myCollection.backgroundColor = .yellow.withAlphaComponent(0.6)
        myCollection.register(CollectionCell.self, forCellWithReuseIdentifier: "CollectionCell")
        myCollection.delegate = self
        myCollection.dataSource = self
    }
    
    func setupAndAddList() {
//        view.addSubview(listView)
//        listView.backgroundColor = CustomColors.listColor
//        listView.layer.cornerRadius = 70
        view.addSubview(tableView)
        tableView.register(TableCell.self, forCellReuseIdentifier: "TableCell")
        tableView.layer.cornerRadius = 25 // 70
        tableView.backgroundColor = CustomColors.listBackgroundRow
        tableView.delegate = self
        tableView.dataSource = self
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

extension FrameFourVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Возвращаем количество строк в таблице
        return shopDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Создаем и настраиваем ячейку таблицы
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCell
        cell.backgroundColor = .white
        cell.mainText.text = shopDataArray[indexPath.row].name
        cell.secondaryText.text =  shopDataArray[indexPath.row].discription
        
        if shopDataArray[indexPath.row].isPayment {
            cell.priceText.textColor = .red
            cell.priceText.text = "-" + shopDataArray[indexPath.row].currency + String(shopDataArray[indexPath.row].price)
        } else {
            cell.priceText.text = " " + shopDataArray[indexPath.row].currency + String(shopDataArray[indexPath.row].price)
        }

        let selectedView = UIView()
        selectedView.backgroundColor = CustomColors.listSelectedRow
        cell.selectedBackgroundView = selectedView
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height * 0.09
    }
}
