//
//  UIBarButtonItem-Extension.swift
//  DouyuSwift
//
//  Created by ToothBond on 16/11/10.
//  Copyright © 2016年 ToothBond. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    /*
    class func createItem(imageName: String, highImageName: String, size: CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        return UIBarButtonItem(customView: btn)
        
    }
 */
    
    convenience init(imageName: String, highImageName: String = "", size: CGSize = CGSize.zero) {
        let btn = UIButton()
        btn.setImage(UIImage(named:imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named:highImageName), for: .highlighted)
        }
        
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView : btn)
    }
    
}
