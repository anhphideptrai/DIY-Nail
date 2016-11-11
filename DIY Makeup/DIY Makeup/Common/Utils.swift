//
//  Utils.swift
//  DIY Makeup
//
//  Created by Nguyen Duc Phi on 11/11/16.
//  Copyright © 2016 BStarsolutions. All rights reserved.
//

import UIKit

func UIColorFromRGB(rgbValue: UInt, alpha: CGFloat = 1.0) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 0xFF,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 0xFF,
        blue: CGFloat(rgbValue & 0x0000FF) / 0xFF,
        alpha: CGFloat(alpha)
    )
}

func showAlertWith(title: String? = Constants.Messages.name, message: String?, cancelTitle: String? = Constants.Messages.ok, viewController: UIViewController) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    alert.addAction(UIAlertAction(title: cancelTitle, style: UIAlertActionStyle.default, handler: nil))
    viewController.present(alert, animated: true, completion: nil)
}
