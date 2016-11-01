//
//  vc3.swift
//  menu-test
//
//  Created by Robin Somlette on 31-Oct-2016.
//  Copyright © 2016 Robin Somlette. All rights reserved.
//

import UIKit
import SnapKit
import PagingMenuController

class vc3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.let textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        let textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        textLabel.center = view.center
        textLabel.textAlignment = .center
        textLabel.font = UIFont.systemFont(ofSize: 24)
        textLabel.text = "View Controller 3"
        view.addSubview(textLabel)
        
        textLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
