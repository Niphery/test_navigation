//
//  ViewController.swift
//  menu-test
//
//  Created by Robin Somlette on 31-Oct-2016.
//  Copyright © 2016 Robin Somlette. All rights reserved.
//

import UIKit
import PagingMenuController
import SnapKit

private struct PagingMenuOptions: PagingMenuControllerCustomizable {
    fileprivate var componentType: ComponentType {
        return .all(menuOptions: MenuOptions(), pagingControllers: pagingControllers)
    }
    
    fileprivate var pagingControllers: [UIViewController] {
        let viewController1 = vc1()
        let viewController2 = vc2()
        let viewController3 = vc3()
        return [viewController1, viewController2, viewController3]
    }
    
    fileprivate struct MenuOptions: MenuViewCustomizable {
        var height: CGFloat = 120
        var displayMode: MenuDisplayMode {
            return .standard(widthMode: MenuItemWidthMode.fixed(width: 150), centerItem: true, scrollingMode: MenuScrollingMode.pagingEnabled)
        }
        var itemsOptions: [MenuItemViewCustomizable] {
            return [MenuItem1(), MenuItem2(), MenuItem3()]
        }
    }
    
    fileprivate struct MenuItem1: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            let view = CustomMenuItem(title: "title 1", image: #imageLiteral(resourceName: "add"))
            return .custom(view: view)
            
        }
    }
    fileprivate struct MenuItem2: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            let view = CustomMenuItem(title: "title 2", image: #imageLiteral(resourceName: "notif"))
            return .custom(view: view)
            
        }
    }
    fileprivate struct MenuItem3: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            let view = CustomMenuItem(title: "title 3", image: #imageLiteral(resourceName: "profil"))
            return .custom(view: view)
        }
    }
}

class RootViewControoler: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        
        let options = PagingMenuOptions()
        let pagingMenuController = PagingMenuController(options: options)
        pagingMenuController.delegate = self
        pagingMenuController.view.frame.origin.y += 64
        pagingMenuController.view.frame.size.height -= 64
        
        addChildViewController(pagingMenuController)
        view.addSubview(pagingMenuController.view)
        pagingMenuController.didMove(toParentViewController: self)
        
        
        // FIXME: Remove
        self.title = "YAY"
    }
}

extension RootViewControoler: PagingMenuControllerDelegate {
    // MARK: - PagingMenuControllerDelegate
    func willMove(toMenu menuController: UIViewController, fromMenu previousMenuController: UIViewController) {
        print(#function)
        print(previousMenuController)
        print(menuController)
    }
    
    func didMove(toMenu menuController: UIViewController, fromMenu previousMenuController: UIViewController) {
        print(#function)
        print(previousMenuController)
        print(menuController)
    }
    
    func willMove(toMenuItem menuItemView: MenuItemView, fromMenuItem previousMenuItemView: MenuItemView) {
        print(#function)
        print(previousMenuItemView)
        print(menuItemView)
    }
    
    func didMove(toMenuItem menuItemView: MenuItemView, fromMenuItem previousMenuItemView: MenuItemView) {
        print(#function)
        print(previousMenuItemView)
        print(menuItemView)
    }
}
