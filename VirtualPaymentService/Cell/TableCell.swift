//
//  TableCell.swift
//  VirtualPaymentService
//
//  Created by lar-x on 07.05.2024.
//

import UIKit

class TableCell: UITableViewCell {
    
    let shopView = ShopView()
    let mainText = UILabel()
    let secondaryText = UILabel()
    let priceText = UILabel()
//    var isPaymentFlag = true

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(shopView)
        contentView.addSubview(mainText)
        contentView.addSubview(secondaryText)
        contentView.addSubview(priceText)
        
        settingsLabel(lable: mainText, color: .black, size: 13, font: "Poppins-Bold", aligment: .left)
        settingsLabel(lable: secondaryText, color: .black, size: 10, font: "Poppins-Regular", aligment: .left)
        settingsLabel(lable: priceText, color: .green, size: 14, font: "Poppins-Regular", aligment: .right)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        shopView.frame = CGRect(x: self.frame.height * 0.25, y: self.contentView.center.y * 0.5, width: 0, height: self.frame.height * 0.5)
        shopView.frame.size.width = shopView.frame.size.height
        
        mainText.frame = CGRect(x: 0, y: shopView.frame.origin.y, width: self.frame.width * 0.6, height: self.frame.height * 0.5 * 0.6 )
        mainText.frame.origin.x = shopView.frame.origin.x + shopView.frame.size.width + 5
        
        secondaryText.frame = CGRect(x: 0, y: 0, width: mainText.frame.size.width, height: self.frame.height * 0.5 * 0.4 )
        secondaryText.frame.origin.x = shopView.frame.origin.x + shopView.frame.size.width + 5
        secondaryText.frame.origin.y = shopView.frame.origin.y + mainText.frame.size.height
        
        priceText.frame = CGRect(x: 0, y: shopView.frame.origin.y, width: self.frame.width - mainText.frame.width - shopView.frame.width - self.frame.height * 0.5, height: self.frame.height * 0.5)
        priceText.frame.origin.x = mainText.frame.origin.x + mainText.frame.size.width + 5
       // priceText.frame.width = self.frame.width - mainText.frame.width - shopView.frame.width - self.frame.height * 0.5
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func settingsLabel(lable: UILabel, color: UIColor, size: CGFloat, font: String, aligment: NSTextAlignment) {
        lable.textColor = color
        lable.textAlignment = aligment
        lable.font = UIFont(name: font, size: size)
        //lable.backgroundColor = .systemMint

    }

}
