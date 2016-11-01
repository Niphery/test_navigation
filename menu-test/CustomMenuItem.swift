//
//  CustomMenuItem.swift
//  menu-test
//
//  Created by Robin Somlette on 31-Oct-2016.
//  Copyright © 2016 Robin Somlette. All rights reserved.
//

import UIKit

class CustomMenuItem: UIView {
    
    var imageView = UIImageView(frame: .zero)
    var titleLbl = UILabel(frame: .zero)

    init(title: String, image: UIImage) {
        super.init(frame: CGRect(x: 0, y: 0, width: 150, height: 120))
        addSubview(imageView)
        addSubview(titleLbl)
        self.imageView.image = image
        self.titleLbl.text = title
        createConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createConstraints() {
        imageView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        titleLbl.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom)
        }
    }

}
